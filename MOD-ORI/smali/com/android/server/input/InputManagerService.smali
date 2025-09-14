.class public final Lcom/android/server/input/InputManagerService;
.super Landroid/hardware/input/IInputManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# static fields
.field public static final DEBUG:Z

.field public static final DEX_SETTINGS_URI:Landroid/net/Uri;

.field public static final IS_TABLET_DEVICE:Z

.field public static SEP_FULL:Z

.field public static final mHighHysteresis:[F

.field public static final mLowHysteresis:[F

.field public static final mMultiFingerGestureEnable:Z


# instance fields
.field public mAddingPogoKeyboardIntentPending:Z

.field public final mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

.field public final mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

.field public final mAssociationsLock:Ljava/lang/Object;

.field public final mBatteryController:Lcom/android/server/input/BatteryController;

.field public mBlockDeviceMode:I

.field public final mBlockTkeyCallerList:Ljava/util/Vector;

.field public final mBlockTspCallerList:Ljava/util/Vector;

.field public mBootCompleted:Z

.field public final mBroadcastReceiver:Lcom/android/server/input/InputManagerService$4;

.field public final mContext:Landroid/content/Context;

.field public final mControlWakeKey:Lcom/android/server/input/ControlWakeKey;

.field public mCurrentFourTapBehavior:I

.field public mCurrentThreeTapBehavior:I

.field public final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field public mDefaultPointerIcon:Landroid/view/PointerIcon;

.field public mDefaultPointerIconChanged:Z

.field public final mDeviceBlockReceiver:Lcom/android/server/input/InputManagerService$4;

.field public final mDeviceTypeAssociations:Ljava/util/Map;

.field public mDisplayIdForPointerIcon:I

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDoubleTouchGestureEnableFile:Ljava/io/File;

.field public mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

.field public final mFocusEventDebugViewLock:Ljava/lang/Object;

.field public final mFoldingAngleListener:Lcom/android/server/input/InputManagerService$12;

.field public mFoldingState:I

.field public mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

.field public mForcedDefaultPointerIconChanged:Z

.field public final mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

.field public final mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

.field public mInputDevices:[Landroid/view/InputDevice;

.field public final mInputDevicesChangedListeners:Landroid/util/SparseArray;

.field public mInputDevicesChangedPending:Z

.field public final mInputDevicesLock:Ljava/lang/Object;

.field public mInputFilter:Landroid/view/IInputFilter;

.field public mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

.field public final mInputFilterLock:Ljava/lang/Object;

.field public final mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

.field public mInputMethodManagerCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

.field public final mInputMonitors:Ljava/util/Map;

.field public final mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

.field public mIsKidsMode:Z

.field public final mIsVibrating:Landroid/util/SparseBooleanArray;

.field public final mKeyRemapper:Lcom/android/server/input/KeyRemapper;

.field public final mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

.field public final mKeyboardLayoutAssociations:Ljava/util/Map;

.field public final mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

.field public final mKeyboardLedController:Lcom/android/server/input/KeyboardLedController;

.field public final mKidsModeReceiver:Lcom/android/server/input/InputManagerService$4;

.field public mLastLidEventTime:J

.field public mLastPointerIcon:Landroid/view/PointerIcon;

.field public mLastPointerIconType:I

.field public mLastWacomMode:I

.field public final mLidStateChangedListeners:Landroid/util/SparseArray;

.field public final mLidStateLock:Ljava/lang/Object;

.field public final mLidSwitchCallbacks:Ljava/util/List;

.field public final mLidSwitchLock:Ljava/lang/Object;

.field public final mLightLock:Ljava/lang/Object;

.field public final mLightSessions:Landroid/util/ArrayMap;

.field public final mMultiFingerGestureListeners:Landroid/util/SparseArray;

.field public final mMultiFingerGestureLock:Ljava/lang/Object;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

.field public mNextVibratorTokenValue:I

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mNotifyPogoKeyboardNotMatchPending:Z

.field public mPaperCoverNotificationPending:Z

.field public mPogoKeyboardConnected:Z

.field public final mPointerIconCache:Lcom/android/server/input/PointerIconCache;

.field public final mPointerIconChangedListeners:Landroid/util/SparseArray;

.field public final mPointerIconLock:Ljava/lang/Object;

.field public final mRuntimeAssociations:Ljava/util/Map;

.field public mSecAccessoryManagerCallbacks:Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;

.field public final mSensorAccuracyListenersToNotify:Ljava/util/List;

.field public final mSensorEventListeners:Landroid/util/SparseArray;

.field public final mSensorEventListenersToNotify:Ljava/util/List;

.field public final mSensorEventLock:Ljava/lang/Object;

.field public final mSettingsObserver:Lcom/android/server/input/InputSettingsObserver;

.field public mSharedKeyReferenceCount:I

.field public final mSharedKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mShowKeyPresses:Z

.field public mShowRotaryInput:Z

.field public final mShowingTouchSensitivityNotiActionReceiver:Lcom/android/server/input/InputManagerService$4;

.field public mShowingTouchSensitivityNotiCount:I

.field public mShowingTouchSensitivityNotiCountOld:I

.field public mSpenControlToken:Landroid/os/IBinder;

.field public mSpenCoverAttached:Z

.field public mSpenDeviceId:I

.field public final mStaticAssociations:Ljava/util/Map;

.field public final mStickyModifierStateController:Lcom/android/server/input/StickyModifierStateController;

.field public final mSwitchEventChangedListeners:Landroid/util/SparseArray;

.field public final mSwitchEventChangedLock:Ljava/lang/Object;

.field public mSystemReady:Z

.field public final mTabletModeChangedListeners:Landroid/util/SparseArray;

.field public final mTabletModeLock:Ljava/lang/Object;

.field public final mTempGamePads:Ljava/util/ArrayList;

.field public final mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

.field public final mTempLidStateChangedListenersToNotify:Ljava/util/List;

.field public final mTempMultiFingerGestureListenersToNotify:Ljava/util/List;

.field public final mTempPointerIconChangedListenersToNotify:Ljava/util/List;

.field public final mTempSwitchEventChangedListenersToNotify:Ljava/util/List;

.field public final mTempTabletModeChangedListenersToNotify:Ljava/util/List;

.field public final mTempWirelessKeyboardShareChangedListenersToNotify:Ljava/util/List;

.field public final mToastDialog:Lcom/android/server/input/ToastDialog;

.field public mToolTypeForDefaultPointerIcon:I

.field public mToolTypeForForcedDefaultPointerIcon:I

.field public mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

.field public final mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

.field public final mUniqueIdAssociationsByPort:Ljava/util/Map;

.field public final mUseDevInputEventForAudioJack:Z

.field public final mVelocityTrackerStrategy:Ljava/lang/String;

.field public final mVibratorLock:Ljava/lang/Object;

.field public final mVibratorStateListeners:Landroid/util/SparseArray;

.field public final mVibratorTokens:Ljava/util/Map;

.field public mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

.field public mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

.field public final mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

.field public final mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

.field public final mWirelessKeyboardShareLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "InputManager"

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
    sput-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 9
    .line 10
    new-instance v0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v0, "ro.build.characteristics"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v2, "phone"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string/jumbo v2, "tablet"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sput-boolean v0, Lcom/android/server/input/InputManagerService;->IS_TABLET_DEVICE:Z

    .line 33
    .line 34
    new-array v0, v1, [F

    .line 35
    .line 36
    fill-array-data v0, :array_0

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/android/server/input/InputManagerService;->mHighHysteresis:[F

    .line 40
    .line 41
    new-array v0, v1, [F

    .line 42
    .line 43
    fill-array-data v0, :array_1

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/android/server/input/InputManagerService;->mLowHysteresis:[F

    .line 47
    .line 48
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 49
    .line 50
    const v1, 0x1ae14

    .line 51
    .line 52
    .line 53
    if-lt v0, v1, :cond_0

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    sput-boolean v0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureEnable:Z

    .line 59
    .line 60
    const-string/jumbo v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sput-object v0, Lcom/android/server/input/InputManagerService;->DEX_SETTINGS_URI:Landroid/net/Uri;

    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x43200000    # 160.0f
        0x43b40000    # 360.0f
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_1
    .array-data 4
        0x0
        0x41a00000    # 20.0f
        0x43160000    # 150.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/input/InputManagerService$Injector;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$1;

    .line 2
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/input/InputManagerService$Injector;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/input/InputManagerService$1;)V

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;-><init>(Lcom/android/server/input/InputManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/input/InputManagerService$Injector;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4
    invoke-direct/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;-><init>()V

    .line 5
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mLidStateLock:Ljava/lang/Object;

    .line 6
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mTempLidStateChangedListenersToNotify:Ljava/util/List;

    const-wide/16 v2, -0x1

    .line 8
    iput-wide v2, v0, Lcom/android/server/input/InputManagerService;->mLastLidEventTime:J

    .line 9
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureLock:Ljava/lang/Object;

    .line 10
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mTempMultiFingerGestureListenersToNotify:Ljava/util/List;

    .line 12
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedLock:Ljava/lang/Object;

    .line 13
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedListeners:Landroid/util/SparseArray;

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mTempSwitchEventChangedListenersToNotify:Ljava/util/List;

    .line 15
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    .line 16
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    .line 18
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    .line 19
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    .line 22
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mPointerIconLock:Ljava/lang/Object;

    .line 23
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mTempPointerIconChangedListenersToNotify:Ljava/util/List;

    .line 25
    new-instance v2, Lcom/android/server/input/PersistentDataStore;

    .line 26
    new-instance v3, Lcom/android/server/input/PersistentDataStore$Injector;

    invoke-direct {v3}, Lcom/android/server/input/PersistentDataStore$Injector;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/server/input/PersistentDataStore;-><init>(Lcom/android/server/input/PersistentDataStore$Injector;)V

    .line 27
    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 28
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    const/4 v10, 0x0

    .line 29
    new-array v3, v10, [Landroid/view/InputDevice;

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 30
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 32
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 33
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    .line 34
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    .line 35
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mIsVibrating:Landroid/util/SparseBooleanArray;

    .line 36
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    .line 37
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    .line 38
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    .line 40
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    .line 41
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 42
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    .line 43
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByPort:Ljava/util/Map;

    .line 44
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

    .line 45
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutAssociations:Ljava/util/Map;

    .line 46
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mDeviceTypeAssociations:Ljava/util/Map;

    .line 47
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    .line 48
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    .line 49
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    .line 50
    new-instance v3, Lcom/android/server/input/InputKeyCounter;

    invoke-direct {v3}, Lcom/android/server/input/InputKeyCounter;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    .line 51
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    .line 52
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mTempWirelessKeyboardShareChangedListenersToNotify:Ljava/util/List;

    .line 54
    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput-object v11, v0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    .line 55
    iput v10, v0, Lcom/android/server/input/InputManagerService;->mSharedKeyReferenceCount:I

    const/4 v3, 0x2

    .line 56
    iput v3, v0, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    .line 57
    iput v10, v0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    .line 58
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    .line 59
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    .line 60
    iput-boolean v10, v0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    .line 61
    iput-boolean v10, v0, Lcom/android/server/input/InputManagerService;->mAddingPogoKeyboardIntentPending:Z

    .line 62
    iput-boolean v10, v0, Lcom/android/server/input/InputManagerService;->mNotifyPogoKeyboardNotMatchPending:Z

    const/4 v12, 0x4

    .line 63
    iput v12, v0, Lcom/android/server/input/InputManagerService;->mCurrentThreeTapBehavior:I

    const/4 v13, 0x1

    .line 64
    iput v13, v0, Lcom/android/server/input/InputManagerService;->mCurrentFourTapBehavior:I

    .line 65
    iput-boolean v10, v0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    const/4 v14, 0x0

    .line 66
    iput-object v14, v0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 67
    iput v10, v0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    .line 68
    iput-boolean v10, v0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIconChanged:Z

    .line 69
    iput-object v14, v0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 70
    iput v10, v0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    .line 71
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugViewLock:Ljava/lang/Object;

    .line 72
    iput-boolean v10, v0, Lcom/android/server/input/InputManagerService;->mShowKeyPresses:Z

    .line 73
    iput-boolean v10, v0, Lcom/android/server/input/InputManagerService;->mShowRotaryInput:Z

    .line 74
    iput-boolean v10, v0, Lcom/android/server/input/InputManagerService;->mPaperCoverNotificationPending:Z

    .line 75
    iput v10, v0, Lcom/android/server/input/InputManagerService;->mShowingTouchSensitivityNotiCount:I

    .line 76
    iput v10, v0, Lcom/android/server/input/InputManagerService;->mShowingTouchSensitivityNotiCountOld:I

    .line 77
    new-instance v3, Lcom/android/server/input/InputManagerService$6;

    invoke-direct {v3, v0}, Lcom/android/server/input/InputManagerService$6;-><init>(Lcom/android/server/input/InputManagerService;)V

    .line 78
    iput-object v14, v0, Lcom/android/server/input/InputManagerService;->mSpenControlToken:Landroid/os/IBinder;

    const/4 v3, -0x1

    .line 79
    iput v3, v0, Lcom/android/server/input/InputManagerService;->mSpenDeviceId:I

    .line 80
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    .line 81
    iput-boolean v10, v0, Lcom/android/server/input/InputManagerService;->mSpenCoverAttached:Z

    .line 82
    iput v3, v0, Lcom/android/server/input/InputManagerService;->mLastWacomMode:I

    .line 83
    new-instance v15, Lcom/android/server/input/InputManagerService$4;

    const/4 v3, 0x4

    invoke-direct {v15, v0, v3}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;I)V

    .line 84
    iput v10, v0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    .line 85
    new-instance v3, Lcom/android/server/input/InputManagerService$12;

    invoke-direct {v3, v0}, Lcom/android/server/input/InputManagerService$12;-><init>(Lcom/android/server/input/InputManagerService;)V

    .line 86
    new-instance v9, Lcom/android/server/input/InputManagerService$4;

    const/4 v3, 0x1

    invoke-direct {v9, v0, v3}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;I)V

    .line 87
    new-instance v8, Lcom/android/server/input/InputManagerService$4;

    const/4 v3, 0x2

    invoke-direct {v8, v0, v3}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;I)V

    .line 88
    iput-boolean v10, v0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    .line 89
    new-instance v7, Lcom/android/server/input/InputManagerService$4;

    const/4 v3, 0x3

    invoke-direct {v7, v0, v3}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;I)V

    .line 90
    invoke-static {}, Lcom/android/server/input/InputManagerService;->loadStaticInputPortAssociations()Ljava/util/Map;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    .line 91
    iget-object v6, v1, Lcom/android/server/input/InputManagerService$Injector;->mContext:Landroid/content/Context;

    .line 92
    iput-object v6, v0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 93
    new-instance v5, Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 94
    iget-object v3, v1, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    .line 95
    invoke-direct {v5, v0, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V

    iput-object v5, v0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 96
    new-instance v4, Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget-object v3, v1, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-direct {v4, v0, v3}, Lcom/android/server/input/NativeInputManagerService$NativeImpl;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/MessageQueue;)V

    .line 97
    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 98
    new-instance v3, Lcom/android/server/input/InputSettingsObserver;

    invoke-direct {v3, v6, v5, v0, v4}, Lcom/android/server/input/InputSettingsObserver;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService$InputManagerHandler;Lcom/android/server/input/InputManagerService;Lcom/android/server/input/NativeInputManagerService$NativeImpl;)V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mSettingsObserver:Lcom/android/server/input/InputSettingsObserver;

    .line 99
    new-instance v3, Lcom/android/server/input/KeyboardLayoutManager;

    .line 100
    iget-object v10, v1, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    .line 101
    invoke-direct {v3, v6, v4, v2, v10}, Lcom/android/server/input/KeyboardLayoutManager;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService$NativeImpl;Lcom/android/server/input/PersistentDataStore;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    .line 102
    new-instance v3, Lcom/android/server/input/BatteryController;

    .line 103
    iget-object v10, v1, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    .line 104
    new-instance v12, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;

    invoke-direct {v12, v6, v10}, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iget-object v14, v1, Lcom/android/server/input/InputManagerService$Injector;->mUEventManager:Lcom/android/server/input/UEventManager;

    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v4

    move-object/from16 v19, v10

    move-object/from16 v20, v14

    move-object/from16 v21, v12

    invoke-direct/range {v16 .. v21}, Lcom/android/server/input/BatteryController;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Looper;Lcom/android/server/input/UEventManager;Lcom/android/server/input/BatteryController$BluetoothBatteryManager;)V

    .line 105
    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    .line 106
    sget-object v3, Lcom/android/server/input/InputFeatureFlagProvider;->sKeyboardBacklightControlOverride:Ljava/util/Optional;

    sget-boolean v10, Lcom/android/server/input/InputFeatureFlagProvider;->KEYBOARD_BACKLIGHT_CONTROL_ENABLED:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    new-instance v10, Lcom/android/server/input/KeyboardBacklightController;

    .line 108
    iget-object v12, v1, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    .line 109
    new-instance v14, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda0;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iget-object v3, v1, Lcom/android/server/input/InputManagerService$Injector;->mUEventManager:Lcom/android/server/input/UEventManager;

    move-object/from16 v16, v3

    move-object v3, v10

    move-object/from16 v17, v4

    move-object v4, v6

    move-object/from16 v22, v5

    move-object/from16 v5, v17

    move-object v13, v6

    move-object v6, v2

    move-object/from16 v18, v7

    move-object v7, v12

    move-object v12, v8

    move-object v8, v14

    move-object v14, v9

    move-object/from16 v9, v16

    invoke-direct/range {v3 .. v9}, Lcom/android/server/input/KeyboardBacklightController;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Lcom/android/server/input/PersistentDataStore;Landroid/os/Looper;Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;Lcom/android/server/input/UEventManager;)V

    goto :goto_0

    :cond_0
    move-object/from16 v17, v4

    move-object/from16 v22, v5

    move-object v13, v6

    move-object/from16 v18, v7

    move-object v12, v8

    move-object v14, v9

    .line 110
    new-instance v10, Lcom/android/server/input/InputManagerService$1;

    .line 111
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 112
    :goto_0
    iput-object v10, v0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    .line 113
    new-instance v3, Lcom/android/server/input/StickyModifierStateController;

    invoke-direct {v3}, Lcom/android/server/input/StickyModifierStateController;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mStickyModifierStateController:Lcom/android/server/input/StickyModifierStateController;

    .line 114
    new-instance v3, Lcom/android/server/input/KeyboardLedController;

    .line 115
    iget-object v4, v1, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    move-object/from16 v5, v17

    .line 116
    invoke-direct {v3, v13, v4, v5}, Lcom/android/server/input/KeyboardLedController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/input/NativeInputManagerService$NativeImpl;)V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mKeyboardLedController:Lcom/android/server/input/KeyboardLedController;

    .line 117
    new-instance v3, Lcom/android/server/input/KeyRemapper;

    .line 118
    iget-object v1, v1, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    .line 119
    invoke-direct {v3, v13, v5, v2, v1}, Lcom/android/server/input/KeyRemapper;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService$NativeImpl;Lcom/android/server/input/PersistentDataStore;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mKeyRemapper:Lcom/android/server/input/KeyRemapper;

    .line 120
    new-instance v1, Lcom/android/server/input/PointerIconCache;

    invoke-direct {v1, v13, v5}, Lcom/android/server/input/PointerIconCache;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService$NativeImpl;)V

    iput-object v1, v0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    .line 121
    new-instance v1, Lcom/android/server/input/GamePadRemapper;

    invoke-direct {v1, v2}, Lcom/android/server/input/GamePadRemapper;-><init>(Lcom/android/server/input/PersistentDataStore;)V

    iput-object v1, v0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 122
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    sput-boolean v1, Lcom/android/server/input/InputManagerService;->SEP_FULL:Z

    .line 123
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110273

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Initializing input manager, mUseDevInputEventForAudioJack="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040349

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 127
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    .line 128
    const-string/jumbo v1, "input_native_boot"

    const-string/jumbo v2, "velocitytracker_strategy"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/input/InputManagerService;->mVelocityTrackerStrategy:Ljava/lang/String;

    .line 129
    new-instance v1, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-direct {v1, v0}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;)V

    .line 130
    const-class v2, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-static {v2, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 131
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v3, v22

    const/4 v2, 0x0

    .line 133
    invoke-virtual {v13, v12, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 134
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    const-string/jumbo v1, "com.samsung.android.intent.action.SET_INWATER_TOUCH"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v7, "com.samsung.android.permission.SEM_SET_DEVICE_BLOCK"

    const/4 v9, 0x4

    move-object v4, v13

    move-object v5, v14

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 137
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.sec.android.app.kidshome.action.DEFAULT_HOME_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v19, "com.samsung.kidshome.broadcast.DEFAULT_HOME_CHANGE_PERMISSION"

    const/16 v21, 0x4

    move-object/from16 v16, v13

    move-object/from16 v17, v18

    move-object/from16 v18, v1

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 139
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.android.action.SHOWING_TOUCH_SENSITIVITY_NOTI"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 140
    invoke-virtual {v13, v15, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 141
    new-instance v1, Lcom/android/server/input/ToastDialog;

    invoke-direct {v1, v13}, Lcom/android/server/input/ToastDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/input/InputManagerService;->mToastDialog:Lcom/android/server/input/ToastDialog;

    .line 142
    new-instance v2, Lcom/android/server/input/ControlWakeKey;

    .line 143
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    .line 144
    iput-object v3, v2, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 145
    iput-object v13, v2, Lcom/android/server/input/ControlWakeKey;->mContext:Landroid/content/Context;

    .line 146
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 147
    const-string v4, "116,172"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/android/server/input/ControlWakeKey;->makeWakeKeyRefCount(Ljava/lang/String;Z)V

    .line 148
    const-string v4, "114"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "115"

    .line 149
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    .line 150
    :goto_3
    const-string v4, "/sys/power/volkey_wakeup"

    invoke-static {v4, v3}, Lcom/android/server/input/ControlWakeKey;->writeWakeKeyVolume(Ljava/lang/String;Z)V

    .line 151
    const-string v4, "/sys/class/sec/ap_pmic/volkey_wakeup"

    invoke-static {v4, v3}, Lcom/android/server/input/ControlWakeKey;->writeWakeKeyVolume(Ljava/lang/String;Z)V

    .line 152
    invoke-virtual {v2}, Lcom/android/server/input/ControlWakeKey;->makeWakeKeyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/input/ControlWakeKey;->writeWakeKeyString(Ljava/lang/String;)V

    .line 153
    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/ControlWakeKey;

    .line 154
    sget-boolean v2, Lcom/android/server/input/InputManagerService;->IS_TABLET_DEVICE:Z

    if-eqz v2, :cond_4

    .line 155
    new-instance v2, Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-direct {v2, v13, v0, v1, v11}, Lcom/android/server/input/WirelessKeyboardMouseShare;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Lcom/android/server/input/ToastDialog;Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 156
    const-string/jumbo v1, "power"

    invoke-virtual {v13, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "InputManager.mSharedKeyWakeLock"

    const/4 v3, 0x1

    .line 157
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/input/InputManagerService;->mSharedKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    .line 158
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 159
    iput v2, v0, Lcom/android/server/input/InputManagerService;->mSharedKeyReferenceCount:I

    :cond_4
    return-void
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p0, v2

    .line 7
    .line 8
    invoke-virtual {v3}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v1
.end method

.method public static flatten(Ljava/util/Map;)[Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    mul-int/lit8 v1, v1, 0x2

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v2, 0x6

    .line 15
    invoke-direct {v1, v2, v0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    new-array p0, p0, [Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, [Ljava/lang/String;

    .line 29
    .line 30
    return-object p0
.end method

.method public static getExcludedDeviceNames()[Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v2, v1, [Ljava/io/File;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v3, v2, v4

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    aput-object v5, v2, v3

    .line 22
    .line 23
    move v3, v4

    .line 24
    :goto_0
    if-ge v3, v1, :cond_2

    .line 25
    .line 26
    aget-object v5, v2, v3

    .line 27
    .line 28
    new-instance v6, Ljava/io/File;

    .line 29
    .line 30
    const-string/jumbo v7, "etc/excluded-input-devices.xml"

    .line 31
    .line 32
    .line 33
    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .line 37
    .line 38
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {v5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    const-string/jumbo v9, "devices"

    .line 51
    .line 52
    .line 53
    invoke-static {v8, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    :goto_1
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    const-string/jumbo v10, "device"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-nez v9, :cond_1

    .line 71
    .line 72
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_5

    .line 79
    :catch_0
    move-exception v5

    .line 80
    goto :goto_4

    .line 81
    :catchall_0
    move-exception v7

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    :try_start_3
    const-string/jumbo v9, "name"

    .line 84
    .line 85
    .line 86
    const/4 v10, 0x0

    .line 87
    invoke-interface {v8, v10, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    if-eqz v9, :cond_0

    .line 92
    .line 93
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :catchall_1
    move-exception v5

    .line 102
    :try_start_5
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    :goto_3
    throw v7
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 106
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v8, "Could not parse \'"

    .line 109
    .line 110
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v6, "\'"

    .line 121
    .line 122
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    const-string v7, "InputManager"

    .line 130
    .line 131
    invoke-static {v7, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .line 133
    .line 134
    :catch_1
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, [Ljava/lang/String;

    .line 144
    .line 145
    return-object v0
.end method

.method private getKeyboardLayoutAssociations()[Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutAssociations:Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p0
.end method

.method public static synthetic lambda$dump$4(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "  port: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v0, "  layout: "

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static synthetic lambda$dumpAssociations$5(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "  port: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v0, "  display: "

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static synthetic lambda$dumpAssociations$6(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "  port: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v0, "  display: "

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static synthetic lambda$dumpAssociations$7(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "  port: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v0, "  uniqueId: "

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static synthetic lambda$dumpAssociations$8(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "  descriptor: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v0, "  uniqueId: "

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static synthetic lambda$dumpAssociations$9(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "  port: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v0, "  type: "

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static synthetic lambda$flatten$10(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic lambda$setMousePointerAccelerationEnabled$2(ZLcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V
    .locals 0

    .line 1
    iput-boolean p0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mousePointerAccelerationEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic lambda$setPointerIconVisible$3(ZLcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V
    .locals 0

    .line 1
    iput-boolean p0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    .line 2
    .line 3
    return-void
.end method

.method public static loadStaticInputPortAssociations()Ljava/util/Map;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    const-string/jumbo v2, "etc/input-port-associations.xml"

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Ljava/io/File;

    .line 24
    .line 25
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :try_start_1
    invoke-static {v0}, Lcom/android/server/input/ConfigurationProcessor;->processInputPortAssociations(Ljava/io/InputStream;)Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 38
    .line 39
    .line 40
    return-object v2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception v2

    .line 44
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_1
    move-exception v0

    .line 49
    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 53
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, "Could not parse \'"

    .line 56
    .line 57
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, "\'"

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v2, "InputManager"

    .line 77
    .line 78
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    :catch_1
    new-instance v0, Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    .line 85
    .line 86
    return-object v0
.end method


# virtual methods
.method public final addDeviceWirelessKeyboardShare(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/16 v3, 0x3e8

    .line 23
    .line 24
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const-string p0, "InputManager"

    .line 31
    .line 32
    const-string p1, "addDeviceWirelessKeyboardShare : called by not allowed app"

    .line 33
    .line 34
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    const/4 p0, 0x0

    .line 39
    return p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->addDevice(I)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 p0, 0x1

    .line 50
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    const-string p1, "InputManager"

    .line 52
    .line 53
    const-string v0, "addDeviceWirelessKeyboardShare"

    .line 54
    .line 55
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return p0

    .line 59
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p0
.end method

.method public final addKeyboardLayoutAssociation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutAssociations:Ljava/util/Map;

    .line 14
    .line 15
    const-string v2, "%s,%s"

    .line 16
    .line 17
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {v2, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast v1, Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 32
    .line 33
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeKeyboardLayoutAssociation()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0
.end method

.method public final addPortAssociation(Ljava/lang/String;I)V
    .locals 3

    .line 1
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    .line 2
    .line 3
    const-string v1, "addPortAssociation()"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    .line 19
    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast v1, Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 31
    .line 32
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->notifyPortAssociationsChanged()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p0

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 40
    .line 41
    const-string p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    .line 42
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public final addUniqueIdAssociationByDescriptor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    .line 2
    .line 3
    const-string v1, "addUniqueIdAssociationByDescriptor()"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

    .line 22
    .line 23
    check-cast v1, Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 30
    .line 31
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeUniqueIdAssociation()V

    .line 32
    .line 33
    .line 34
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

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 39
    .line 40
    const-string p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public final addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    .line 2
    .line 3
    const-string v1, "addUniqueIdAssociation()"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByPort:Ljava/util/Map;

    .line 22
    .line 23
    check-cast v1, Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 30
    .line 31
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeUniqueIdAssociation()V

    .line 32
    .line 33
    .line 34
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

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 39
    .line 40
    const-string p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public final buildTurnOnAction(I)Landroid/app/Notification$Action;
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Notification$Action$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const v2, 0x1040e69

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->createPendingIntentAction(I)Landroid/app/PendingIntent;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-direct {v0, p1, v1, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final canDispatchToDisplay(II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->canDispatchToDisplay(II)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final cancelCurrentTouch()V
    .locals 3

    .line 1
    const-string v0, "android.permission.MONITOR_INPUT"

    .line 2
    .line 3
    const-string/jumbo v1, "cancelCurrentTouch()"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 14
    .line 15
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->cancelCurrentTouch()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 20
    .line 21
    const-string v0, "Requires MONITOR_INPUT permission"

    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final cancelVibrate(ILandroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    .line 5
    .line 6
    check-cast v1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iget v1, p2, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    .line 17
    .line 18
    if-eq v1, p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {p0, p2}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p0
.end method

.method public final cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .locals 2

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 7
    .line 8
    iget v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    .line 9
    .line 10
    iget v1, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    .line 11
    .line 12
    invoke-interface {p0, v0, v1}, Lcom/android/server/input/NativeInputManagerService;->cancelVibrate(II)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    iput-boolean p0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

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
    monitor-exit p1

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final changeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/16 v3, 0x3e8

    .line 23
    .line 24
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const-string p0, "InputManager"

    .line 31
    .line 32
    const-string/jumbo p1, "changeDeviceWirelessKeyboardShare : called by not allowed app"

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 43
    .line 44
    .line 45
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :try_start_1
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 47
    .line 48
    invoke-virtual {v3, p2, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->changeHIDDevice(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    invoke-interface {p0, p2}, Lcom/android/server/input/NativeInputManagerService;->enableWirelessKeyboardShare(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    .line 56
    .line 57
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    const-string p0, "InputManager"

    .line 68
    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string/jumbo v0, "changeDeviceWirelessKeyboardShare : "

    .line 72
    .line 73
    .line 74
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    if-nez p1, :cond_2

    .line 78
    .line 79
    const/4 p1, 0x0

    .line 80
    :cond_2
    invoke-static {p2, p1, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    throw p0
.end method

.method public final checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    if-eqz p3, :cond_3

    .line 4
    const-class p3, Landroid/app/ActivityManagerInternal;

    .line 5
    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManagerInternal;

    .line 6
    const-string v0, "ActivityManagerInternal should not be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_3

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    .line 10
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11
    throw p0

    .line 12
    :cond_3
    :goto_0
    const-string p0, "Permission Denial: "

    const-string p3, " from pid="

    .line 13
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", uid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " requires "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 16
    const-string p1, "InputManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final checkInputFeature()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 2
    .line 3
    const-string v1, "InputManager"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v0, "checkInputFeature: system not ready, return 0. caller="

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, ", pid="

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return p0

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    const-string v0, "SemInputDeviceManagerService"

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getTspSupportFeature(I)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v2, "0x%X"

    .line 68
    .line 69
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string/jumbo v2, "checkInputFeature: features = "

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    return p0
.end method

.method public final checkSystemSignature(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/16 v1, 0x3e8

    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v1, "uid("

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ") does not match signature of system uid :"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string p1, "InputManager"

    .line 43
    .line 44
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return p0

    .line 49
    :cond_0
    const/4 p0, 0x1

    .line 50
    return p0
.end method

.method public final clearAllModifierKeyRemappings()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->clearAllModifierKeyRemappings_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyRemapper:Lcom/android/server/input/KeyRemapper;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const-string/jumbo v1, "settings_new_keyboard_modifier_key"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public final closeLightSession(ILandroid/os/IBinder;)V
    .locals 5

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/input/InputManagerService$LightSession;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v2

    .line 21
    :goto_0
    const-string/jumbo v4, "not registered"

    .line 22
    .line 23
    .line 24
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v3, v1, Lcom/android/server/input/InputManagerService$LightSession;->mLightStates:[Landroid/hardware/lights/LightState;

    .line 28
    .line 29
    new-instance v4, Landroid/hardware/lights/LightState;

    .line 30
    .line 31
    invoke-direct {v4, v2}, Landroid/hardware/lights/LightState;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v3, v1, Lcom/android/server/input/InputManagerService$LightSession;->mLightIds:[I

    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/server/input/InputManagerService$LightSession;->mLightStates:[Landroid/hardware/lights/LightState;

    .line 40
    .line 41
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/input/InputManagerService;->setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_1

    .line 56
    .line 57
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    .line 58
    .line 59
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    check-cast p2, Lcom/android/server/input/InputManagerService$LightSession;

    .line 64
    .line 65
    iget-object v1, p2, Lcom/android/server/input/InputManagerService$LightSession;->mLightIds:[I

    .line 66
    .line 67
    iget-object p2, p2, Lcom/android/server/input/InputManagerService$LightSession;->mLightStates:[Landroid/hardware/lights/LightState;

    .line 68
    .line 69
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/input/InputManagerService;->setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    :goto_1
    monitor-exit v0

    .line 76
    return-void

    .line 77
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0
.end method

.method public final connectByBtDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->connectByBtDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 13
    .line 14
    .line 15
    const-string p0, "InputManager"

    .line 16
    .line 17
    const-string/jumbo p1, "connectByBtDevice"

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final controlSpenWithToken(Landroid/os/IBinder;Z)V
    .locals 8

    .line 1
    const-string v0, "android.permission.DISABLE_INPUT_DEVICE"

    .line 2
    .line 3
    const-string/jumbo v1, "disableInputDevice()"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    const-string/jumbo v0, "spenContolToken must not be null"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mSpenDeviceId:I

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    array-length v3, v0

    .line 29
    move v4, v2

    .line 30
    :goto_0
    if-ge v4, v3, :cond_1

    .line 31
    .line 32
    aget v5, v0, v4

    .line 33
    .line 34
    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const-string/jumbo v7, "sec_e-pen"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_0

    .line 50
    .line 51
    iput v5, p0, Lcom/android/server/input/InputManagerService;->mSpenDeviceId:I

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mSpenDeviceId:I

    .line 58
    .line 59
    const-string v3, "InputManager"

    .line 60
    .line 61
    if-ne v0, v1, :cond_2

    .line 62
    .line 63
    const-string/jumbo p0, "not find spen device"

    .line 64
    .line 65
    .line 66
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string/jumbo v4, "call controlSpenWithToken by pid "

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, ", "

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    if-eqz p2, :cond_4

    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mSpenControlToken:Landroid/os/IBinder;

    .line 103
    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    iget p1, p0, Lcom/android/server/input/InputManagerService;->mSpenDeviceId:I

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->enableInputDevice(I)V

    .line 109
    .line 110
    .line 111
    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mSpenControlToken:Landroid/os/IBinder;

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    const-string/jumbo p0, "disable spen by other or already enabled or call first time after booting"

    .line 116
    .line 117
    .line 118
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    :try_start_0
    new-instance p2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda12;

    .line 123
    .line 124
    invoke-direct {p2, p0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/input/InputManagerService;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {p1, p2, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    iget p2, p0, Lcom/android/server/input/InputManagerService;->mSpenDeviceId:I

    .line 131
    .line 132
    invoke-virtual {p0, p2}, Lcom/android/server/input/InputManagerService;->disableInputDevice(I)V

    .line 133
    .line 134
    .line 135
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mSpenControlToken:Landroid/os/IBinder;

    .line 136
    .line 137
    :goto_2
    return-void

    .line 138
    :catch_0
    const-string p0, "Client died before control spen"

    .line 139
    .line 140
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 145
    .line 146
    const-string p1, "Requires DISABLE_INPUT_DEVICE permission spen"

    .line 147
    .line 148
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p0
.end method

.method public final createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const v0, 0xffff

    invoke-interface {p0, p1, v0}, Lcom/android/server/input/NativeInputManagerService;->createInputChannel(Ljava/lang/String;I)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0
.end method

.method public final createInputChannel(Ljava/lang/String;I)Landroid/view/InputChannel;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->createInputChannel(Ljava/lang/String;I)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0
.end method

.method public final createPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    .line 1
    const-string v0, ":settings:fragment_args_key"

    .line 2
    .line 3
    const-string/jumbo v1, "increse_touch_sensetivity"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/content/Intent;

    .line 11
    .line 12
    const-string v2, "android.settings.DISPLAY_SETTINGS"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v2, 0x10008000

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const-string v2, ":settings:show_fragment_args"

    .line 24
    .line 25
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    const/high16 v2, 0x4000000

    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public final createPendingIntentAction(I)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string/jumbo v1, "com.samsung.android.action.SHOWING_TOUCH_SENSITIVITY_NOTI"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "channelId"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    const/high16 v1, 0x4000000

    .line 28
    .line 29
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final createSpyWindowGestureMonitor(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/SurfaceControl;IIII)Landroid/view/InputChannel;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v2, p2

    .line 3
    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 4
    .line 5
    move/from16 v3, p7

    .line 6
    .line 7
    invoke-interface {v1, p2, v3}, Lcom/android/server/input/NativeInputManagerService;->createInputChannel(Ljava/lang/String;I)Landroid/view/InputChannel;

    .line 8
    .line 9
    .line 10
    move-result-object v8

    .line 11
    :try_start_0
    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;

    .line 12
    .line 13
    invoke-direct {v1, p0, v8}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    move-object v4, p1

    .line 18
    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    iget-object v9, v0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    .line 22
    .line 23
    monitor-enter v9

    .line 24
    :try_start_1
    iget-object v10, v0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    .line 25
    .line 26
    invoke-virtual {v8}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object v11

    .line 30
    new-instance v12, Lcom/android/server/input/GestureMonitorSpyWindow;

    .line 31
    .line 32
    move-object v0, v12

    .line 33
    move-object v1, p1

    .line 34
    move-object v2, p2

    .line 35
    move/from16 v3, p4

    .line 36
    .line 37
    move/from16 v4, p5

    .line 38
    .line 39
    move/from16 v5, p6

    .line 40
    .line 41
    move-object/from16 v6, p3

    .line 42
    .line 43
    move-object v7, v8

    .line 44
    invoke-direct/range {v0 .. v7}, Lcom/android/server/input/GestureMonitorSpyWindow;-><init>(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/view/SurfaceControl;Landroid/view/InputChannel;)V

    .line 45
    .line 46
    .line 47
    check-cast v10, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    new-instance v0, Landroid/view/InputChannel;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8, v0}, Landroid/view/InputChannel;->copyTo(Landroid/view/InputChannel;)V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    throw v0

    .line 65
    :catch_0
    const-string v0, "InputManager"

    .line 66
    .line 67
    const-string v1, "Client died before \'"

    .line 68
    .line 69
    const-string v3, "\' could be created."

    .line 70
    .line 71
    invoke-static {v1, p2, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    return-object v0
.end method

.method public final deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto/16 :goto_6

    .line 22
    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    move v3, v1

    .line 33
    :goto_0
    if-ge v3, v2, :cond_1

    .line 34
    .line 35
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 36
    .line 37
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 52
    .line 53
    array-length v3, v3

    .line 54
    mul-int/lit8 v4, v3, 0x2

    .line 55
    .line 56
    new-array v4, v4, [I

    .line 57
    .line 58
    move v5, v1

    .line 59
    move v6, v5

    .line 60
    :goto_1
    const/4 v7, 0x1

    .line 61
    if-ge v5, v3, :cond_6

    .line 62
    .line 63
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 64
    .line 65
    aget-object v8, v8, v5

    .line 66
    .line 67
    mul-int/lit8 v9, v5, 0x2

    .line 68
    .line 69
    invoke-virtual {v8}, Landroid/view/InputDevice;->getId()I

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    aput v10, v4, v9

    .line 74
    .line 75
    add-int/lit8 v9, v9, 0x1

    .line 76
    .line 77
    invoke-virtual {v8}, Landroid/view/InputDevice;->getGeneration()I

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    aput v10, v4, v9

    .line 82
    .line 83
    sget-boolean v9, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 84
    .line 85
    if-eqz v9, :cond_2

    .line 86
    .line 87
    const-string v9, "InputManager"

    .line 88
    .line 89
    new-instance v10, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v11, "device "

    .line 95
    .line 96
    .line 97
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8}, Landroid/view/InputDevice;->getId()I

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v11, " generation "

    .line 108
    .line 109
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8}, Landroid/view/InputDevice;->getGeneration()I

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    :cond_2
    invoke-virtual {v8}, Landroid/view/InputDevice;->getVendorId()I

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    invoke-virtual {v8}, Landroid/view/InputDevice;->getProductId()I

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    invoke-virtual {v8}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    const/16 v11, 0x4e8

    .line 138
    .line 139
    if-ne v9, v11, :cond_3

    .line 140
    .line 141
    const v9, 0xa035

    .line 142
    .line 143
    .line 144
    if-ne v10, v9, :cond_3

    .line 145
    .line 146
    move v6, v7

    .line 147
    :cond_3
    const/16 v7, 0x401

    .line 148
    .line 149
    invoke-virtual {v8, v7}, Landroid/view/InputDevice;->supportsSource(I)Z

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-eqz v7, :cond_5

    .line 154
    .line 155
    invoke-virtual {v8}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    if-eqz v7, :cond_4

    .line 160
    .line 161
    invoke-virtual {v8}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    const-string v9, "Test)"

    .line 166
    .line 167
    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-nez v7, :cond_5

    .line 172
    .line 173
    :cond_4
    invoke-virtual {v8}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-static {p1, v7}, Lcom/android/server/input/InputManagerService;->containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    if-nez v7, :cond_5

    .line 182
    .line 183
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    move p1, v1

    .line 194
    :goto_2
    if-ge p1, v2, :cond_7

    .line 195
    .line 196
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    check-cast v0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    :try_start_1
    iget-object v3, v0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mListener:Landroid/hardware/input/IInputDevicesChangedListener;

    .line 208
    .line 209
    invoke-interface {v3, v4}, Landroid/hardware/input/IInputDevicesChangedListener;->onInputDevicesChanged([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :catch_0
    move-exception v3

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string v8, "Failed to notify process "

    .line 217
    .line 218
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget v8, v0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mPid:I

    .line 222
    .line 223
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v8, " that input devices changed, assuming it died."

    .line 227
    .line 228
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    const-string v8, "InputManager"

    .line 236
    .line 237
    invoke-static {v8, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->binderDied()V

    .line 241
    .line 242
    .line 243
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_7
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 249
    .line 250
    .line 251
    iget-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    .line 252
    .line 253
    if-eq v6, p1, :cond_9

    .line 254
    .line 255
    iput-boolean v6, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    .line 256
    .line 257
    iget-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 258
    .line 259
    if-eqz p1, :cond_8

    .line 260
    .line 261
    invoke-virtual {p0, v6}, Lcom/android/server/input/InputManagerService;->wakeUpWhenPogoConnected(Z)V

    .line 262
    .line 263
    .line 264
    iget-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    .line 265
    .line 266
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->sendPogoKeyboardStatus(Z)V

    .line 267
    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_8
    iput-boolean v7, p0, Lcom/android/server/input/InputManagerService;->mAddingPogoKeyboardIntentPending:Z

    .line 271
    .line 272
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    .line 273
    .line 274
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-nez p1, :cond_b

    .line 279
    .line 280
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    :goto_5
    if-ge v1, p1, :cond_a

    .line 287
    .line 288
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    .line 289
    .line 290
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Landroid/view/InputDevice;

    .line 295
    .line 296
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 297
    .line 298
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVendorId()I

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    invoke-virtual {v0}, Landroid/view/InputDevice;->getProductId()I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    check-cast v2, Lcom/android/server/wm/InputManagerCallback;

    .line 307
    .line 308
    iget-object v2, v2, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 309
    .line 310
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 311
    .line 312
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 313
    .line 314
    invoke-virtual {v2, v3, v0, v7}, Lcom/android/server/policy/PhoneWindowManagerExt;->startGameToolsService(IIZ)Z

    .line 315
    .line 316
    .line 317
    add-int/lit8 v1, v1, 0x1

    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_a
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 323
    .line 324
    .line 325
    :cond_b
    return-void

    .line 326
    :goto_6
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 327
    throw p0
.end method

.method public final deliverLidStateChanged(JZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempLidStateChangedListenersToNotify:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidStateLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v3, v1, :cond_0

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempLidStateChangedListenersToNotify:Ljava/util/List;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;

    .line 30
    .line 31
    check-cast v4, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :goto_1
    if-ge v2, v1, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempLidStateChangedListenersToNotify:Ljava/util/List;

    .line 45
    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    :try_start_1
    iget-object v3, v0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mListener:Landroid/hardware/input/ISemLidStateChangedListener;

    .line 58
    .line 59
    invoke-interface {v3, p1, p2, p3}, Landroid/hardware/input/ISemLidStateChangedListener;->onLidStateChanged(JZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception v3

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v5, "Failed to notify process "

    .line 67
    .line 68
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget v5, v0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mPid:I

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v5, " that lid state changed, assuming it died."

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const-string v5, "InputManager"

    .line 86
    .line 87
    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->binderDied()V

    .line 91
    .line 92
    .line 93
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    return-void

    .line 97
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    throw p0
.end method

.method public final deliverMultiFingerGesture(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempMultiFingerGestureListenersToNotify:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v3, v1, :cond_0

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempMultiFingerGestureListenersToNotify:Ljava/util/List;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;

    .line 30
    .line 31
    check-cast v4, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :goto_1
    if-ge v2, v1, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempMultiFingerGestureListenersToNotify:Ljava/util/List;

    .line 45
    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    :try_start_1
    iget-object v3, v0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mListener:Landroid/hardware/input/IMultiFingerGestureListener;

    .line 58
    .line 59
    invoke-interface {v3, p1, p2}, Landroid/hardware/input/IMultiFingerGestureListener;->onMultiFingerGesture(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception v3

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v5, "Failed to notify process "

    .line 67
    .line 68
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget v5, v0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mPid:I

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v5, " that multi finge gesture was made, assuming it died."

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const-string v5, "InputManager"

    .line 86
    .line 87
    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->binderDied()V

    .line 91
    .line 92
    .line 93
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    return-void

    .line 97
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    throw p0
.end method

.method public final deliverPointerIconChanged(ILandroid/view/PointerIcon;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempPointerIconChangedListenersToNotify:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v3, v1, :cond_0

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempPointerIconChangedListenersToNotify:Ljava/util/List;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;

    .line 30
    .line 31
    check-cast v4, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :goto_1
    if-ge v2, v1, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempPointerIconChangedListenersToNotify:Ljava/util/List;

    .line 45
    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    :try_start_1
    iget-object v3, v0, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;->mListener:Landroid/hardware/input/IPointerIconChangedListener;

    .line 58
    .line 59
    invoke-interface {v3, p1, p2}, Landroid/hardware/input/IPointerIconChangedListener;->onPointerIconChanged(ILandroid/view/PointerIcon;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception v3

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v5, "Failed to notify process "

    .line 67
    .line 68
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget v5, v0, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;->mPid:I

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v5, " that pointer icon changed, assuming it died."

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const-string v5, "InputManager"

    .line 86
    .line 87
    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;->binderDied()V

    .line 91
    .line 92
    .line 93
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    return-void

    .line 97
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    throw p0
.end method

.method public final deliverSwitchEventChanged(IIII)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempSwitchEventChangedListenersToNotify:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedListeners:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v3, v1, :cond_0

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempSwitchEventChangedListenersToNotify:Ljava/util/List;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedListeners:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;

    .line 30
    .line 31
    check-cast v4, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :goto_1
    if-ge v2, v1, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempSwitchEventChangedListenersToNotify:Ljava/util/List;

    .line 45
    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    :try_start_1
    iget-object v3, v0, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;->mListener:Landroid/hardware/input/ISwitchEventChangedListener;

    .line 58
    .line 59
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/hardware/input/ISwitchEventChangedListener;->onSwitchEventChanged(IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception v3

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v5, "Failed to notify process "

    .line 67
    .line 68
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget v5, v0, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;->mPid:I

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v5, " that switch event changed was made, assuming it died."

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const-string v5, "InputManager"

    .line 86
    .line 87
    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;->binderDied()V

    .line 91
    .line 92
    .line 93
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    return-void

    .line 97
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    throw p0
.end method

.method public final deliverTabletModeChanged(JZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v3, v1, :cond_0

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    .line 30
    .line 31
    check-cast v4, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :goto_1
    if-ge v2, v1, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    .line 45
    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    :try_start_1
    iget-object v3, v0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->mListener:Landroid/hardware/input/ITabletModeChangedListener;

    .line 58
    .line 59
    invoke-interface {v3, p1, p2, p3}, Landroid/hardware/input/ITabletModeChangedListener;->onTabletModeChanged(JZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception v3

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v5, "Failed to notify process "

    .line 67
    .line 68
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget v5, v0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->mPid:I

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v5, " that tablet mode changed, assuming it died."

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const-string v5, "InputManager"

    .line 86
    .line 87
    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->binderDied()V

    .line 91
    .line 92
    .line 93
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    return-void

    .line 97
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    throw p0
.end method

.method public final deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempWirelessKeyboardShareChangedListenersToNotify:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    :try_start_0
    iput v1, p0, Lcom/android/server/input/InputManagerService;->mSharedKeyReferenceCount:I

    .line 17
    .line 18
    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mSharedKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 19
    .line 20
    invoke-virtual {p3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_5

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter p3

    .line 30
    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    move v2, v1

    .line 37
    :goto_1
    if-ge v2, v0, :cond_1

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTempWirelessKeyboardShareChangedListenersToNotify:Ljava/util/List;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;

    .line 48
    .line 49
    check-cast v3, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    goto :goto_4

    .line 59
    :cond_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    :goto_2
    if-ge v1, v0, :cond_2

    .line 61
    .line 62
    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mTempWirelessKeyboardShareChangedListenersToNotify:Ljava/util/List;

    .line 63
    .line 64
    check-cast p3, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    check-cast p3, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;

    .line 71
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    :try_start_2
    iget-object v4, p3, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;->mListener:Landroid/hardware/input/IWirelessKeyboardShareChangedListener;

    .line 80
    .line 81
    invoke-interface {v4, v2, v3, p1, p2}, Landroid/hardware/input/IWirelessKeyboardShareChangedListener;->onWirelessKeyboardShareChanged(JILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :catch_0
    move-exception v2

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v4, "Failed to notify process "

    .line 89
    .line 90
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget v4, p3, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;->mPid:I

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v4, " that wireless keyboard share changed, assuming it died."

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const-string v4, "InputManager"

    .line 108
    .line 109
    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;->binderDied()V

    .line 113
    .line 114
    .line 115
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    return-void

    .line 119
    :goto_4
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    throw p0

    .line 121
    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 122
    throw p0
.end method

.method public final disableInputDevice(I)V
    .locals 3

    .line 1
    const-string v0, "android.permission.DISABLE_INPUT_DEVICE"

    .line 2
    .line 3
    const-string/jumbo v1, "disableInputDevice()"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->disableInputDevice(I)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mSpenDeviceId:I

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    if-ne v0, p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mSpenControlToken:Landroid/os/IBinder;

    .line 27
    .line 28
    const-string p0, "InputManager"

    .line 29
    .line 30
    const-string/jumbo p1, "disable spen after calling controlSpenWithToken"

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 38
    .line 39
    const-string p1, "Requires DISABLE_INPUT_DEVICE permission"

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final disableSensor(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 5
    .line 6
    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->disableSensor(II)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/InputManagerCallback;->dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "InputManager"

    .line 4
    .line 5
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Landroid/util/IndentingPrintWriter;

    .line 13
    .line 14
    const-string p3, "  "

    .line 15
    .line 16
    invoke-direct {p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p3, "INPUT MANAGER (dumpsys input)\n"

    .line 20
    .line 21
    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 25
    .line 26
    invoke-interface {p3}, Lcom/android/server/input/NativeInputManagerService;->dump()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    if-eqz p3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    const-string p3, "Input Manager Service (Java) State:"

    .line 36
    .line 37
    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->dumpAssociations(Landroid/util/IndentingPrintWriter;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->dumpSpyWindowGestureMonitors(Landroid/util/IndentingPrintWriter;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->dumpDisplayInputPropertiesValues(Landroid/util/IndentingPrintWriter;)V

    .line 50
    .line 51
    .line 52
    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    .line 53
    .line 54
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const-string v0, "Listeners: "

    .line 58
    .line 59
    const-string v1, "State: Polling = "

    .line 60
    .line 61
    new-instance v2, Landroid/util/IndentingPrintWriter;

    .line 62
    .line 63
    invoke-direct {v2, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 64
    .line 65
    .line 66
    iget-object v3, p3, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    .line 67
    .line 68
    monitor-enter v3

    .line 69
    :try_start_0
    const-string v4, "BatteryController:"

    .line 70
    .line 71
    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 75
    .line 76
    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-boolean v1, p3, Lcom/android/server/input/BatteryController;->mIsPolling:Z

    .line 83
    .line 84
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, ", Interactive = "

    .line 88
    .line 89
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-boolean v1, p3, Lcom/android/server/input/BatteryController;->mIsInteractive:Z

    .line 93
    .line 94
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p3, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v0, " battery listeners"

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 131
    .line 132
    .line 133
    const/4 v0, 0x0

    .line 134
    move v1, v0

    .line 135
    :goto_0
    iget-object v4, p3, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    .line 136
    .line 137
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-ge v1, v4, :cond_2

    .line 142
    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v5, ": "

    .line 152
    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object v5, p3, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    .line 157
    .line 158
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    add-int/lit8 v1, v1, 0x1

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :catchall_0
    move-exception p0

    .line 176
    goto/16 :goto_8

    .line 177
    .line 178
    :cond_2
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 179
    .line 180
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v4, "Device Monitors: "

    .line 187
    .line 188
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget-object v4, p3, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 192
    .line 193
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v4, " monitors"

    .line 201
    .line 202
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 213
    .line 214
    .line 215
    move v1, v0

    .line 216
    :goto_1
    iget-object v4, p3, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 217
    .line 218
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    if-ge v1, v4, :cond_3

    .line 223
    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v5, ": "

    .line 233
    .line 234
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    iget-object v5, p3, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 238
    .line 239
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    add-int/lit8 v1, v1, 0x1

    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_3
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 260
    .line 261
    .line 262
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    .line 264
    .line 265
    invoke-interface {p3, p1}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->dump(Ljava/io/PrintWriter;)V

    .line 266
    .line 267
    .line 268
    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLedController:Lcom/android/server/input/KeyboardLedController;

    .line 269
    .line 270
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    new-instance v1, Landroid/util/IndentingPrintWriter;

    .line 274
    .line 275
    invoke-direct {v1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 276
    .line 277
    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    const-string v3, "KeyboardLedController: "

    .line 281
    .line 282
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object v3, p3, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    .line 286
    .line 287
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v3, " keyboard mic mute lights"

    .line 295
    .line 296
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 307
    .line 308
    .line 309
    :goto_2
    iget-object v2, p3, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    .line 310
    .line 311
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-ge v0, v2, :cond_4

    .line 316
    .line 317
    iget-object v2, p3, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    .line 318
    .line 319
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    check-cast v2, Landroid/view/InputDevice;

    .line 324
    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string v4, " "

    .line 334
    .line 335
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string v4, ": "

    .line 346
    .line 347
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-static {v2}, Lcom/android/server/input/KeyboardLedController;->getKeyboardMicMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    invoke-virtual {v2}, Landroid/hardware/lights/Light;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    add-int/lit8 v0, v0, 0x1

    .line 369
    .line 370
    goto :goto_2

    .line 371
    :cond_4
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 372
    .line 373
    .line 374
    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    .line 375
    .line 376
    invoke-virtual {p3, p1}, Lcom/android/server/input/KeyboardLayoutManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 377
    .line 378
    .line 379
    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 380
    .line 381
    monitor-enter p3

    .line 382
    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutAssociations:Ljava/util/Map;

    .line 383
    .line 384
    check-cast v0, Landroid/util/ArrayMap;

    .line 385
    .line 386
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    if-nez v0, :cond_5

    .line 391
    .line 392
    const-string v0, "Keyboard layout Associations:"

    .line 393
    .line 394
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutAssociations:Ljava/util/Map;

    .line 398
    .line 399
    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;

    .line 400
    .line 401
    const/4 v2, 0x0

    .line 402
    invoke-direct {v1, v2, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    check-cast v0, Landroid/util/ArrayMap;

    .line 406
    .line 407
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 408
    .line 409
    .line 410
    goto :goto_3

    .line 411
    :catchall_1
    move-exception p0

    .line 412
    goto/16 :goto_7

    .line 413
    .line 414
    :cond_5
    :goto_3
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 415
    monitor-enter p0

    .line 416
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .line 420
    .line 421
    const-string p3, "  mBlockDeviceMode="

    .line 422
    .line 423
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    iget p3, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    .line 427
    .line 428
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    .line 439
    .line 440
    if-eqz p1, :cond_6

    .line 441
    .line 442
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    .line 443
    .line 444
    .line 445
    move-result p1

    .line 446
    if-lez p1, :cond_6

    .line 447
    .line 448
    const-string p1, "      TSP blocked by:"

    .line 449
    .line 450
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    .line 454
    .line 455
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 456
    .line 457
    .line 458
    move-result-object p1

    .line 459
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 460
    .line 461
    .line 462
    move-result p3

    .line 463
    if-eqz p3, :cond_6

    .line 464
    .line 465
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object p3

    .line 469
    check-cast p3, Ljava/lang/String;

    .line 470
    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .line 475
    .line 476
    const-string v1, "          "

    .line 477
    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object p3

    .line 488
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    goto :goto_4

    .line 492
    :catchall_2
    move-exception p1

    .line 493
    goto :goto_6

    .line 494
    :cond_6
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    .line 495
    .line 496
    if-eqz p1, :cond_7

    .line 497
    .line 498
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    .line 499
    .line 500
    .line 501
    move-result p1

    .line 502
    if-lez p1, :cond_7

    .line 503
    .line 504
    const-string p1, "      TKEY blocked by:"

    .line 505
    .line 506
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    .line 510
    .line 511
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 516
    .line 517
    .line 518
    move-result p3

    .line 519
    if-eqz p3, :cond_7

    .line 520
    .line 521
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object p3

    .line 525
    check-cast p3, Ljava/lang/String;

    .line 526
    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .line 531
    .line 532
    const-string v1, "          "

    .line 533
    .line 534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object p3

    .line 544
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    goto :goto_5

    .line 548
    :cond_7
    monitor-exit p0

    .line 549
    return-void

    .line 550
    :goto_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 551
    throw p1

    .line 552
    :goto_7
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 553
    throw p0

    .line 554
    :goto_8
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 555
    throw p0
.end method

.method public final dumpAssociations(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "Static Associations:"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    .line 15
    .line 16
    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    invoke-direct {v1, v2, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    .line 29
    .line 30
    check-cast v1, Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    const-string v1, "Runtime Associations:"

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    .line 44
    .line 45
    new-instance v2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    const/4 v3, 0x4

    .line 48
    invoke-direct {v2, v3, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    check-cast v1, Landroid/util/ArrayMap;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByPort:Ljava/util/Map;

    .line 60
    .line 61
    check-cast v1, Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    const-string v1, "Unique Id Associations:"

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByPort:Ljava/util/Map;

    .line 75
    .line 76
    new-instance v2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    const/4 v3, 0x5

    .line 79
    invoke-direct {v2, v3, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    check-cast v1, Landroid/util/ArrayMap;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

    .line 88
    .line 89
    check-cast v1, Landroid/util/ArrayMap;

    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_3

    .line 96
    .line 97
    const-string v1, "Unique Id Associations:"

    .line 98
    .line 99
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

    .line 103
    .line 104
    new-instance v2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    const/4 v3, 0x1

    .line 107
    invoke-direct {v2, v3, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    check-cast v1, Landroid/util/ArrayMap;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 113
    .line 114
    .line 115
    :cond_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDeviceTypeAssociations:Ljava/util/Map;

    .line 116
    .line 117
    check-cast v1, Landroid/util/ArrayMap;

    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_4

    .line 124
    .line 125
    const-string v1, "Type Associations:"

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDeviceTypeAssociations:Ljava/util/Map;

    .line 131
    .line 132
    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;

    .line 133
    .line 134
    const/4 v2, 0x2

    .line 135
    invoke-direct {v1, v2, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    check-cast p0, Landroid/util/ArrayMap;

    .line 139
    .line 140
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    monitor-exit v0

    .line 144
    return-void

    .line 145
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    throw p0
.end method

.method public final dumpDisplayInputPropertiesValues(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "mAdditionalDisplayInputProperties:"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string p0, "<none>"

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    .line 25
    .line 26
    :try_start_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 27
    .line 28
    .line 29
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :catchall_1
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-ge v1, v2, :cond_1

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string/jumbo v3, "displayId: "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    .line 56
    .line 57
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    .line 78
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string/jumbo v4, "mousePointerAccelerationEnabled: "

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-boolean v4, v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mousePointerAccelerationEnabled:Z

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string/jumbo v4, "pointerIconVisible: "

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-boolean v2, v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    .line 114
    .line 115
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    .line 124
    .line 125
    add-int/lit8 v1, v1, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_1
    :try_start_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 129
    .line 130
    .line 131
    monitor-exit v0

    .line 132
    return-void

    .line 133
    :goto_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 134
    .line 135
    .line 136
    throw p0

    .line 137
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    throw p0
.end method

.method public final dumpSpyWindowGestureMonitors(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    .line 5
    .line 6
    check-cast v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const-string v1, "Gesture Monitors (implemented as spy windows):"

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    .line 24
    .line 25
    check-cast p0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/android/server/input/GestureMonitorSpyWindow;

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v4, "  "

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    add-int/lit8 v4, v1, 0x1

    .line 59
    .line 60
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ": "

    .line 64
    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v2}, Lcom/android/server/input/GestureMonitorSpyWindow;->dump()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    move v1, v4

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    monitor-exit v0

    .line 86
    return-void

    .line 87
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p0
.end method

.method public final enableInputDevice(I)V
    .locals 3

    .line 1
    const-string v0, "android.permission.DISABLE_INPUT_DEVICE"

    .line 2
    .line 3
    const-string/jumbo v1, "enableInputDevice()"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->enableInputDevice(I)V

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/input/InputManagerService;->mSpenDeviceId:I

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    if-eq p0, v0, :cond_0

    .line 22
    .line 23
    if-ne p0, p1, :cond_0

    .line 24
    .line 25
    const-string p0, "InputManager"

    .line 26
    .line 27
    const-string/jumbo p1, "enable spen after calling controlSpenWithToken"

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 35
    .line 36
    const-string p1, "Requires DISABLE_INPUT_DEVICE permission"

    .line 37
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public final enableSensor(IIII)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 5
    .line 6
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/input/NativeInputManagerService;->enableSensor(IIII)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final filterInputEvent(Landroid/view/InputEvent;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    :try_start_1
    invoke-interface {p0, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :catch_0
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    throw p0
.end method

.method public final flushSensor(II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 19
    .line 20
    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->flushSensor(II)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    monitor-exit v0

    .line 25
    return p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final forceFadeIcon(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->forceFadeIcon(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getBatteryState(I)Landroid/hardware/input/IInputDeviceBatteryState;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iget-object v3, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    new-instance v4, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-direct {v4, v5}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/input/BatteryController;->processInputDevice(ILjava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/input/BatteryController;->queryBatteryStateFromNative(IJZ)Lcom/android/server/input/BatteryController$State;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    monitor-exit v0

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {v3, v1, v2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onPoll(J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/android/server/input/BatteryController$DeviceMonitor;->getBatteryStateForReporting()Lcom/android/server/input/BatteryController$State;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    monitor-exit v0

    .line 58
    :goto_0
    return-object p0

    .line 59
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method public final getCurrentSwitchEventState(IZ)I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    move p2, v1

    .line 6
    :goto_0
    const/16 v2, 0x20

    .line 7
    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    shl-int v2, v0, v1

    .line 11
    .line 12
    and-int v3, p1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 17
    .line 18
    const/4 v4, -0x1

    .line 19
    const/16 v5, -0x100

    .line 20
    .line 21
    invoke-interface {v3, v4, v5, v1}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ne v3, v0, :cond_0

    .line 26
    .line 27
    or-int/2addr p2, v2

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v1, p2

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    and-int/2addr p1, v0

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    .line 37
    .line 38
    :cond_3
    :goto_1
    return v1
.end method

.method public final getDefaultPointerIcon()Landroid/view/PointerIcon;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDeviceAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public getDeviceTypeAssociations()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDeviceTypeAssociations:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw p0
.end method

.method public final getDisplayIdForPointerIcon()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    .line 2
    .line 3
    return p0
.end method

.method public final getDoubleTapTimeout()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final getForcedDefaultPointerIcon()Landroid/view/PointerIcon;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getGamePadRemapButtonAxisPolicy(Ljava/lang/String;I)I
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return p2

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    goto/16 :goto_3

    .line 9
    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfileLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfile:Ljava/util/Map;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v2, -0x1

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v1, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_2
    invoke-static {v1}, Lcom/android/server/input/GamePadRemapper;->isValidId(I)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_3
    iget-object v3, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 48
    .line 49
    monitor-enter v3

    .line 50
    const/16 v0, 0x80b

    .line 51
    .line 52
    const/16 v4, 0x801

    .line 53
    .line 54
    const/16 v5, 0x800

    .line 55
    .line 56
    if-eq p2, v5, :cond_4

    .line 57
    .line 58
    if-eq p2, v4, :cond_4

    .line 59
    .line 60
    if-eq p2, v0, :cond_4

    .line 61
    .line 62
    packed-switch p2, :pswitch_data_0

    .line 63
    .line 64
    .line 65
    :try_start_1
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->loadIfNeededGamePadProfiles()V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    .line 71
    .line 72
    check-cast p0, Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpeButtonMap:Ljava/util/Map;

    .line 81
    .line 82
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    check-cast p0, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    :goto_0
    move p2, p0

    .line 101
    goto :goto_2

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    goto :goto_4

    .line 104
    :cond_4
    :pswitch_0
    if-eq p2, v5, :cond_6

    .line 105
    .line 106
    if-eq p2, v4, :cond_6

    .line 107
    .line 108
    if-eq p2, v0, :cond_5

    .line 109
    .line 110
    packed-switch p2, :pswitch_data_1

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :pswitch_1
    const/16 v2, 0x80f

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    :pswitch_2
    move v2, v0

    .line 118
    goto :goto_1

    .line 119
    :cond_6
    move v2, v5

    .line 120
    :goto_1
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 121
    .line 122
    invoke-virtual {p0, v1, v2}, Lcom/android/server/input/PersistentDataStore;->getStickForGamePadProfiles(II)I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    goto :goto_0

    .line 127
    :goto_2
    monitor-exit v3

    .line 128
    :goto_3
    return p2

    .line 129
    :goto_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    throw p0

    .line 131
    :catchall_1
    move-exception p0

    .line 132
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    throw p0

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x80e
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :pswitch_data_1
    .packed-switch 0x80e
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final getGamepadProfile(I)Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo p0, "{}"

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    const-string/jumbo v0, "getProfile"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string/jumbo p0, "{}"

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/android/server/input/GamePadRemapper;->isValidId(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 32
    .line 33
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .line 35
    .line 36
    if-eqz v0, :cond_a

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 39
    .line 40
    monitor-enter v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v2, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/android/server/input/PersistentDataStore$GamePadProfile;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mName:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 60
    .line 61
    iget-object v3, v3, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v3, Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lcom/android/server/input/PersistentDataStore$GamePadProfile;

    .line 74
    .line 75
    iget-boolean v3, v3, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mUsed:Z

    .line 76
    .line 77
    const-string v4, "ProfileName"

    .line 78
    .line 79
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    const-string v2, "ProfileUsed"

    .line 83
    .line 84
    const/4 v4, 0x1

    .line 85
    if-ne v3, v4, :cond_2

    .line 86
    .line 87
    const-string/jumbo v3, "true"

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto/16 :goto_6

    .line 93
    .line 94
    :cond_2
    const-string/jumbo v3, "false"

    .line 95
    .line 96
    .line 97
    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    .line 99
    .line 100
    sget-object v2, Lcom/android/server/input/GamePadRemapper;->SIMPLE_BUTTON_LIST:Ljava/util/Set;

    .line 101
    .line 102
    check-cast v2, Landroid/util/ArraySet;

    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_4

    .line 113
    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    iget-object v5, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 125
    .line 126
    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->loadIfNeededGamePadProfiles()V

    .line 127
    .line 128
    .line 129
    iget-object v5, v5, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    .line 130
    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    check-cast v5, Ljava/util/HashMap;

    .line 136
    .line 137
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    check-cast v5, Lcom/android/server/input/PersistentDataStore$GamePadProfile;

    .line 142
    .line 143
    iget-object v5, v5, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpeButtonMap:Ljava/util/Map;

    .line 144
    .line 145
    invoke-interface {v5, v3, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    check-cast v3, Ljava/lang/Integer;

    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eq v4, v3, :cond_3

    .line 156
    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v6, "ButtonCode="

    .line 163
    .line 164
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v6, "ToCode="

    .line 180
    .line 181
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_4
    sget-object v2, Lcom/android/server/input/GamePadRemapper;->SIMPLE_STICK_LIST:Ljava/util/Set;

    .line 196
    .line 197
    check-cast v2, Landroid/util/ArraySet;

    .line 198
    .line 199
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-eqz v3, :cond_9

    .line 208
    .line 209
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    check-cast v3, Ljava/lang/Integer;

    .line 214
    .line 215
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    iget-object v4, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 220
    .line 221
    invoke-virtual {v4, p1, v3}, Lcom/android/server/input/PersistentDataStore;->getStickForGamePadProfiles(II)I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-eq v3, v4, :cond_5

    .line 226
    .line 227
    and-int/lit16 v5, v4, 0xfff

    .line 228
    .line 229
    const v6, 0x8000

    .line 230
    .line 231
    .line 232
    and-int v7, v4, v6

    .line 233
    .line 234
    if-ne v7, v6, :cond_6

    .line 235
    .line 236
    const-string/jumbo v6, "true"

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_6
    const-string/jumbo v6, "false"

    .line 241
    .line 242
    .line 243
    :goto_3
    and-int/lit16 v7, v4, 0x4000

    .line 244
    .line 245
    const/16 v8, 0x4000

    .line 246
    .line 247
    if-ne v7, v8, :cond_7

    .line 248
    .line 249
    const-string/jumbo v7, "true"

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_7
    const-string/jumbo v7, "false"

    .line 254
    .line 255
    .line 256
    :goto_4
    and-int/lit16 v4, v4, 0x1000

    .line 257
    .line 258
    const/16 v8, 0x1000

    .line 259
    .line 260
    if-ne v4, v8, :cond_8

    .line 261
    .line 262
    const-string/jumbo v4, "true"

    .line 263
    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_8
    const-string/jumbo v4, "false"

    .line 267
    .line 268
    .line 269
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    const-string v9, "StickCode="

    .line 275
    .line 276
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    new-instance v8, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    const-string v9, "ToCode="

    .line 292
    .line 293
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    const-string v5, " h="

    .line 300
    .line 301
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v5, " v="

    .line 308
    .line 309
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v5, " r="

    .line 316
    .line 317
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    .line 329
    .line 330
    goto :goto_2

    .line 331
    :cond_9
    monitor-exit v0

    .line 332
    goto :goto_7

    .line 333
    :goto_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :try_start_2
    throw p0

    .line 335
    :catch_0
    move-exception p0

    .line 336
    goto :goto_8

    .line 337
    :cond_a
    :goto_7
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 341
    goto :goto_9

    .line 342
    :goto_8
    const-string p1, "InputManager-GamePadRemapper"

    .line 343
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    const-string v1, "Json getProfile error: "

    .line 347
    .line 348
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p0

    .line 355
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p0

    .line 362
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    const-string/jumbo p0, "{}"

    .line 366
    .line 367
    .line 368
    :goto_9
    const-string p1, "InputManager"

    .line 369
    .line 370
    const-string/jumbo v0, "getProfile "

    .line 371
    .line 372
    .line 373
    invoke-static {v0, p0, p1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    return-object p0
.end method

.method public final getGamepadProfileIds()[I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-array p0, v1, [I

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    const-string/jumbo v0, "getGamepadProfileIds"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-array p0, v1, [I

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    .line 29
    .line 30
    if-eqz p0, :cond_3

    .line 31
    .line 32
    check-cast p0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 p0, 0x5

    .line 42
    new-array v2, p0, [I

    .line 43
    .line 44
    :goto_0
    if-ge v1, p0, :cond_4

    .line 45
    .line 46
    aput v1, v2, v1

    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    :goto_1
    new-array v2, v1, [I

    .line 52
    .line 53
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    const-string p0, "InputManager"

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string/jumbo v1, "getGamepadProfileIds "

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    return-object v2

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p0
.end method

.method public final getGlobalMetaState(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getGlobalMetaState(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getHostUsiVersionFromDisplayConfig(I)Landroid/hardware/input/HostUsiVersion;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getHostUsiVersion(I)Landroid/hardware/input/HostUsiVersion;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getHoverTapSlop()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapSlop()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final getHoverTapTimeout()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapTimeout()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final getInboundQueueLength()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 10
    .line 11
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->getInboundQueueLength()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public final getInputDevice(I)Landroid/view/InputDevice;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-ne v4, p1, :cond_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-object v3

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    monitor-exit v0

    .line 26
    const/4 p0, 0x0

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

.method public final getInputDeviceBluetoothAddress(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceBluetoothAddress_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getBluetoothAddress(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-static {p0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v1, "The Bluetooth address of input device "

    .line 24
    .line 25
    const-string v2, " should not be invalid: address="

    .line 26
    .line 27
    invoke-static {p1, v1, v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public final getInputDeviceIds()[I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 5
    .line 6
    array-length v1, v1

    .line 7
    new-array v2, v1, [I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v1, :cond_0

    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 13
    .line 14
    aget-object v4, v4, v3

    .line 15
    .line 16
    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    aput v4, v2, v3

    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    monitor-exit v0

    .line 28
    return-object v2

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final getInputDevicePath(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/16 v2, 0x3e8

    .line 12
    .line 13
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string p0, "InputManager"

    .line 20
    .line 21
    const-string/jumbo p1, "getInputDevicePath : signature not match"

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 30
    .line 31
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getInputDevicePath(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final getInputDevices()[Landroid/view/InputDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

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

.method public final getInputPortAssociations()[Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0
.end method

.method public final getInputUniqueIdAssociationsByDescriptor()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw p0
.end method

.method public final getInputUniqueIdAssociationsByPort()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByPort:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw p0
.end method

.method public final getKeyCharacterMap(Ljava/lang/String;)Landroid/view/KeyCharacterMap;
    .locals 3

    .line 1
    const-string/jumbo v0, "layoutDescriptor must not be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    new-array v0, v0, [Ljava/lang/String;

    .line 14
    .line 15
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, v2, v0}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda1;-><init>(I[Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v1}, Lcom/android/server/input/KeyboardLayoutManager;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    aget-object v1, v0, p0

    .line 26
    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const/4 p0, -0x1

    .line 34
    invoke-static {p0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    aget-object p0, v0, p0

    .line 40
    .line 41
    invoke-static {p1, p0}, Landroid/view/KeyCharacterMap;->load(Ljava/lang/String;Ljava/lang/String;)Landroid/view/KeyCharacterMap;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :goto_0
    return-object p0
.end method

.method public final getKeyCodeForKeyLocation(II)I
    .locals 1

    .line 1
    if-lez p2, :cond_1

    .line 2
    .line 3
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-le p2, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 11
    .line 12
    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->getKeyCodeForKeyLocation(II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final getKeyCodeState(III)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->getKeyCodeState(III)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayoutSelectionResult;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/view/InputDevice;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    .line 28
    .line 29
    invoke-direct {v0, p2, p3, p4}, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;-><init>(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1, v0}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sget-boolean p3, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    .line 37
    .line 38
    if-eqz p3, :cond_2

    .line 39
    .line 40
    new-instance p3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string/jumbo v0, "getKeyboardLayoutForInputDevice() "

    .line 43
    .line 44
    .line 45
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, ", userId : "

    .line 56
    .line 57
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, ", subtype = "

    .line 64
    .line 65
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, " -> "

    .line 72
    .line 73
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string p2, "KeyboardLayoutManager"

    .line 84
    .line 85
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    :goto_0
    sget-object p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->FAILED:Landroid/hardware/input/KeyboardLayoutSelectionResult;

    .line 90
    .line 91
    :cond_2
    :goto_1
    return-object p0
.end method

.method public final getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/InputDevice;->isVirtual()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/view/InputDevice;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    .line 28
    .line 29
    invoke-direct {p1, p2, p3, p4}, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;-><init>(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutListForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)[Landroid/hardware/input/KeyboardLayout;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 38
    new-array p0, p0, [Landroid/hardware/input/KeyboardLayout;

    .line 39
    .line 40
    :goto_1
    return-object p0
.end method

.method public final getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mImeInfoLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    new-instance v2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    .line 13
    .line 14
    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mCurrentImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    .line 18
    .line 19
    invoke-virtual {p0, v2, p2}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string p3, "KeyboardLayoutManager"

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "Overlay KLD="

    .line 36
    .line 37
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, ", dev="

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x2

    .line 59
    new-array p1, p1, [Ljava/lang/String;

    .line 60
    .line 61
    new-instance p3, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda1;

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-direct {p3, v0, p1}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda1;-><init>(I[Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p2, p3}, Lcom/android/server/input/KeyboardLayoutManager;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    aget-object p0, p1, p0

    .line 72
    .line 73
    if-nez p0, :cond_2

    .line 74
    .line 75
    const-string p0, "KeyboardLayoutManager"

    .line 76
    .line 77
    const-string p1, "Could not get keyboard layout with descriptor \'"

    .line 78
    .line 79
    const-string p3, "\'."

    .line 80
    .line 81
    invoke-static {p1, p2, p3, p0}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    move-object v1, p1

    .line 86
    :goto_0
    return-object v1

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    throw p0
.end method

.method public final getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, v2, v0}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/android/server/input/KeyboardLayoutManager;->visitAllKeyboardLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    new-array p0, p0, [Landroid/hardware/input/KeyboardLayout;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, [Landroid/hardware/input/KeyboardLayout;

    .line 28
    .line 29
    return-object p0
.end method

.method public final getLastLidEventTimeNanos()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mLastLidEventTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getLidState()I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    const/16 v0, -0x100

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, -0x1

    .line 7
    invoke-interface {p0, v2, v0, v1}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getLightState(II)Landroid/hardware/lights/LightState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 5
    .line 6
    invoke-interface {v1, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->getLightColor(II)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 11
    .line 12
    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->getLightPlayerId(II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    new-instance p1, Landroid/hardware/lights/LightState;

    .line 17
    .line 18
    invoke-direct {p1, v1, p0}, Landroid/hardware/lights/LightState;-><init>(II)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object p1

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final getLights(I)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getLights(I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getLoadedPointerIcon(II)Landroid/view/PointerIcon;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/util/SparseArray;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/view/PointerIcon;

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->getContextForDisplayLocked(I)Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 54
    .line 55
    .line 56
    iget v3, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconFillStyle:I

    .line 57
    .line 58
    invoke-static {v3}, Landroid/view/PointerIcon;->vectorFillStyleToResource(I)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/4 v4, 0x1

    .line 63
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Landroid/view/ContextThemeWrapper;

    .line 67
    .line 68
    invoke-direct {v3, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 69
    .line 70
    .line 71
    iget-boolean p1, p0, Lcom/android/server/input/PointerIconCache;->mUseLargePointerIcons:Z

    .line 72
    .line 73
    iget p0, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconScale:F

    .line 74
    .line 75
    invoke-static {v3, p2, p1, p0}, Landroid/view/PointerIcon;->getLoadedSystemIcon(Landroid/content/Context;IZF)Landroid/view/PointerIcon;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    monitor-exit v0

    .line 86
    return-object v2

    .line 87
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p0
.end method

.method public final getLongPressTimeout()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final getModifierKeyRemapping()Ljava/util/Map;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getModifierKeyRemapping_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyRemapper:Lcom/android/server/input/KeyRemapper;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/input/KeyRemapper;->getKeyRemapping()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getMousePointerSpeed()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->getMousePointerSpeed()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getMultiFingerGestureBehavior(Ljava/lang/String;I)I
    .locals 0

    .line 1
    return p2
.end method

.method public final getParentSurfaceForPointers(I)J
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    .line 4
    .line 5
    const-string v0, "Failed to get parent surface for pointers on display "

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    const-string p0, "WindowManager"

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, " - DisplayContent not found."

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 56
    .line 57
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 59
    .line 60
    .line 61
    :goto_0
    if-nez p0, :cond_1

    .line 62
    .line 63
    const-wide/16 p0, 0x0

    .line 64
    .line 65
    return-wide p0

    .line 66
    :cond_1
    iget-wide p0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 67
    .line 68
    return-wide p0

    .line 69
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 71
    .line 72
    .line 73
    throw p0
.end method

.method public final getPointerIconType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/input/InputManagerService;->mLastPointerIconType:I

    .line 2
    .line 3
    return p0
.end method

.method public final getPointerLayer()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/InputManagerCallback;->getPointerLayer()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getScanCodeState(III)I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/16 v2, 0x3e8

    .line 12
    .line 13
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string p0, "InputManager"

    .line 20
    .line 21
    const-string/jumbo p1, "getScanCodeState : signature not match"

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 p0, -0x1

    .line 28
    return p0

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 30
    .line 31
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->getScanCodeState(III)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public final getSensorList(I)[Landroid/hardware/input/InputSensorInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getSetPenModeOnDex(I)I
    .locals 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "key"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "spen_mode"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "mouse"

    .line 17
    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const-string/jumbo v3, "pen"

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v3, v1

    .line 26
    :goto_0
    const-string/jumbo v4, "def"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    sget-object v3, Lcom/android/server/input/InputManagerService;->DEX_SETTINGS_URI:Landroid/net/Uri;

    .line 39
    .line 40
    const-string/jumbo v4, "getSettings"

    .line 41
    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-virtual {p0, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    const/4 p0, 0x1

    .line 61
    return p0

    .line 62
    :cond_1
    const/4 p0, 0x0

    .line 63
    return p0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    const-string v0, "InputManager"

    .line 66
    .line 67
    const-string v1, "Failed to get settings SETTINGS_KEY_SPEN_MODE"

    .line 68
    .line 69
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    :cond_2
    return p1
.end method

.method public final getSupportButtonNStick()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 2
    .line 3
    const-string/jumbo v1, "{}"

    .line 4
    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const-string/jumbo v0, "getSupportButtonNStick"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string p0, ""

    .line 25
    .line 26
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 27
    .line 28
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 29
    .line 30
    .line 31
    sget-object v2, Lcom/android/server/input/GamePadRemapper;->SIMPLE_BUTTON_LIST:Ljava/util/Set;

    .line 32
    .line 33
    check-cast v2, Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "BUTTON_START"

    .line 40
    .line 41
    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v3}, Lcom/android/server/input/GamePadRemapper;->getButtonString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    const-string v2, "BUTTON_END"

    .line 75
    .line 76
    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    const-string v2, "STICK_START"

    .line 80
    .line 81
    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    sget-object v2, Lcom/android/server/input/GamePadRemapper;->SIMPLE_STICK_LIST:Ljava/util/Set;

    .line 85
    .line 86
    check-cast v2, Landroid/util/ArraySet;

    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Ljava/lang/Integer;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-static {v3}, Lcom/android/server/input/GamePadRemapper;->getButtonString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    const-string v2, "STICK_END"

    .line 121
    .line 122
    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_3

    .line 130
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v2, "Json getSupportButtonNStick error: "

    .line 133
    .line 134
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    const-string v0, "InputManager-GamePadRemapper"

    .line 149
    .line 150
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    :goto_3
    const-string/jumbo p0, "getSupportButtonNStick "

    .line 154
    .line 155
    .line 156
    const-string v0, "InputManager"

    .line 157
    .line 158
    invoke-static {p0, v1, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return-object v1
.end method

.method public final getSwitchState(III)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getToolTypeForDefaultPointerIcon()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .locals 1

    .line 1
    const-string/jumbo v0, "inputDeviceDescriptor must not be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 22
    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    sget-object p0, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    .line 29
    .line 30
    aget-object p0, p0, p2
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    :try_start_2
    const-string p1, "InputManager"

    .line 35
    .line 36
    const-string p2, "Cannot get touch calibration."

    .line 37
    .line 38
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    :goto_0
    if-nez p0, :cond_1

    .line 43
    .line 44
    sget-object p0, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    .line 45
    .line 46
    :cond_1
    :goto_1
    monitor-exit v0

    .line 47
    return-object p0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw p0
.end method

.method public final getTouchSensitivity()I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, -0x2

    .line 9
    const-string v2, "auto_adjust_touch"

    .line 10
    .line 11
    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getTouchSensitivityNotiCount()I
    .locals 1

    .line 1
    const-string/jumbo p0, "persist.service.touchsensitivity.noticount"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "null"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    :goto_0
    return p0
.end method

.method public final getVelocityTrackerStrategy()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mVelocityTrackerStrategy:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVibratorIds(I)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getVibratorIds(I)[I

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getVibratorToken(ILandroid/os/IBinder;)Lcom/android/server/input/InputManagerService$VibratorToken;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    .line 5
    .line 6
    check-cast v1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 17
    .line 18
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    .line 19
    .line 20
    add-int/lit8 v3, v2, 0x1

    .line 21
    .line 22
    iput v3, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    .line 23
    .line 24
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/input/InputManagerService$VibratorToken;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    :try_start_1
    invoke-interface {p2, v1, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    .line 32
    .line 33
    check-cast p0, Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-virtual {p0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception p0

    .line 42
    new-instance p1, Ljava/lang/RuntimeException;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_0
    :goto_0
    monitor-exit v0

    .line 49
    return-object v1

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    throw p0
.end method

.method public final getVirtualKeyQuietTimeMillis()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x10e016d

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final hasKeys(II[I[Z)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "keyCodes must not be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "keyExists must not be null"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    array-length v0, p4

    .line 14
    array-length v1, p3

    .line 15
    if-lt v0, v1, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 18
    .line 19
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/input/NativeInputManagerService;->hasKeys(II[I[Z)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string/jumbo p1, "keyExists must be at least as large as keyCodes"

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final increaseTouchSensitivityNotiCount()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->getTouchSensitivityNotiCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/input/InputManagerService;->mShowingTouchSensitivityNotiCount:I

    .line 12
    .line 13
    const-string/jumbo p0, "persist.service.touchsensitivity.noticount"

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final initTspCmdForSpay()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->SEP_FULL:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "persist.service.tspcmd.spay"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "true"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->isSpayFullAppInstalled()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sget-object v1, Landroid/hardware/input/InputManager$SemTspCommandType;->SPAY:Landroid/hardware/input/InputManager$SemTspCommandType;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p0, v1, v0}, Lcom/android/server/input/InputManagerService;->setTspEnabled(IZ)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/InputManagerService;->injectInputEventToTarget(Landroid/view/InputEvent;II)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final injectInputEventToTarget(Landroid/view/InputEvent;II)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v4, p2

    .line 4
    .line 5
    move/from16 v9, p3

    .line 6
    .line 7
    const-string v1, "android.permission.INJECT_EVENTS"

    .line 8
    .line 9
    const-string/jumbo v2, "injectInputEvent()"

    .line 10
    .line 11
    .line 12
    const/4 v10, 0x1

    .line 13
    invoke-virtual {v0, v1, v2, v10}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_7

    .line 18
    .line 19
    const-string/jumbo v1, "event must not be null"

    .line 20
    .line 21
    .line 22
    move-object/from16 v2, p1

    .line 23
    .line 24
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    if-eq v4, v1, :cond_1

    .line 31
    .line 32
    if-ne v4, v10, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string/jumbo v1, "mode is invalid"

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 53
    .line 54
    .line 55
    move-result-wide v12

    .line 56
    const/4 v1, -0x1

    .line 57
    const/4 v14, 0x0

    .line 58
    if-eq v9, v1, :cond_2

    .line 59
    .line 60
    move v15, v10

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move v15, v14

    .line 63
    :goto_1
    :try_start_0
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 64
    .line 65
    const/16 v7, 0x7530

    .line 66
    .line 67
    const/high16 v8, 0x8000000

    .line 68
    .line 69
    move-object/from16 v1, p1

    .line 70
    .line 71
    move v2, v15

    .line 72
    move/from16 v3, p3

    .line 73
    .line 74
    move/from16 v4, p2

    .line 75
    .line 76
    move v5, v11

    .line 77
    invoke-interface/range {v0 .. v8}, Lcom/android/server/input/NativeInputManagerService;->injectInputEvent(Landroid/view/InputEvent;ZIIIIII)I

    .line 78
    .line 79
    .line 80
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    if-eq v0, v10, :cond_4

    .line 87
    .line 88
    const/4 v1, 0x3

    .line 89
    const-string v2, "Input event injection from pid "

    .line 90
    .line 91
    const-string v3, "InputManager"

    .line 92
    .line 93
    if-eq v0, v1, :cond_3

    .line 94
    .line 95
    const-string v0, " failed."

    .line 96
    .line 97
    invoke-static {v11, v2, v0, v3}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return v14

    .line 101
    :cond_3
    const-string v0, " timed out."

    .line 102
    .line 103
    invoke-static {v11, v2, v0, v3}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return v14

    .line 107
    :cond_4
    if-nez v15, :cond_5

    .line 108
    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    const-string v1, "Injection should not result in TARGET_MISMATCH when it is not targeted into to a specific uid."

    .line 112
    .line 113
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 118
    .line 119
    const-string v1, "Targeted input event injection from pid "

    .line 120
    .line 121
    const-string v2, " was not directed at a window owned by uid "

    .line 122
    .line 123
    const-string v3, "."

    .line 124
    .line 125
    invoke-static {v11, v9, v1, v2, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_6
    return v10

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    .line 137
    .line 138
    throw v0

    .line 139
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    .line 140
    .line 141
    const-string v1, "Injecting input events requires the caller (or the source of the instrumentation, if any) to have the INJECT_EVENTS permission."

    .line 142
    .line 143
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0
.end method

.method public final interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/InputManagerCallback;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public final interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 10

    .line 1
    const-string/jumbo v0, "setNumLockState: "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugViewLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    new-instance v4, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    invoke-direct {v4, v2, v3}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/debug/FocusEventDebugView;Landroid/view/KeyEvent;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 24
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->IFW_KEY_COUNTER:Z

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    if-eqz v1, :cond_5

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/16 v4, 0x18

    .line 38
    .line 39
    if-eq v1, v4, :cond_1

    .line 40
    .line 41
    const/16 v4, 0x19

    .line 42
    .line 43
    if-eq v1, v4, :cond_1

    .line 44
    .line 45
    const/16 v4, 0x1a

    .line 46
    .line 47
    if-eq v1, v4, :cond_1

    .line 48
    .line 49
    const/16 v4, 0x43a

    .line 50
    .line 51
    if-eq v1, v4, :cond_1

    .line 52
    .line 53
    const/16 v4, 0xbb

    .line 54
    .line 55
    if-eq v1, v4, :cond_1

    .line 56
    .line 57
    const/4 v4, 0x4

    .line 58
    if-eq v1, v4, :cond_1

    .line 59
    .line 60
    const/4 v4, 0x3

    .line 61
    if-ne v1, v4, :cond_5

    .line 62
    .line 63
    :cond_1
    if-nez v3, :cond_5

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_5

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3}, Landroid/view/InputDevice;->isExternal()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_5

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    const/4 v4, -0x1

    .line 92
    if-eq v3, v4, :cond_5

    .line 93
    .line 94
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    .line 95
    .line 96
    iget-object v3, v3, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    .line 97
    .line 98
    const-string v4, "Add keyCode: "

    .line 99
    .line 100
    const-string v5, "Add keyCode: "

    .line 101
    .line 102
    iget-object v6, v3, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    .line 103
    .line 104
    monitor-enter v6

    .line 105
    :try_start_1
    iget-object v7, v3, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    .line 106
    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    if-eqz v7, :cond_2

    .line 116
    .line 117
    iget-object v4, v3, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    .line 118
    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    check-cast v4, Ljava/lang/Integer;

    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    iget-object v7, v3, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    .line 134
    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    iget-object v7, v3, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    .line 143
    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    add-int/2addr v4, v2

    .line 149
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    sget-boolean v7, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    .line 157
    .line 158
    if-eqz v7, :cond_3

    .line 159
    .line 160
    const-string v7, "InputKeyCounter"

    .line 161
    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v1, ", currentCount= "

    .line 171
    .line 172
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :catchall_0
    move-exception p0

    .line 187
    goto :goto_1

    .line 188
    :cond_2
    iget-object v5, v3, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    .line 189
    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    sget-boolean v5, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    .line 202
    .line 203
    if-eqz v5, :cond_3

    .line 204
    .line 205
    const-string v5, "InputKeyCounter"

    .line 206
    .line 207
    new-instance v7, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v1, ", currentCount: 1"

    .line 216
    .line 217
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    :cond_3
    :goto_0
    iget-wide v4, v3, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mAllKeyCount:J

    .line 228
    .line 229
    const-wide/16 v7, 0x1

    .line 230
    .line 231
    add-long/2addr v4, v7

    .line 232
    iput-wide v4, v3, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mAllKeyCount:J

    .line 233
    .line 234
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    .line 236
    .line 237
    iget-object v1, v1, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    .line 238
    .line 239
    iget-object v3, v1, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    .line 240
    .line 241
    monitor-enter v3

    .line 242
    :try_start_2
    iget-wide v4, v1, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mAllKeyCount:J

    .line 243
    .line 244
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 245
    sget-boolean v1, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    .line 246
    .line 247
    if-eqz v1, :cond_4

    .line 248
    .line 249
    const-string v1, "InputKeyCounter"

    .line 250
    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string/jumbo v6, "getAllKeyCount: "

    .line 254
    .line 255
    .line 256
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    :cond_4
    const-wide/16 v6, 0x1f4

    .line 270
    .line 271
    cmp-long v1, v4, v6

    .line 272
    .line 273
    if-lez v1, :cond_5

    .line 274
    .line 275
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 276
    .line 277
    new-instance v3, Lcom/android/server/input/InputManagerService$KeyCountRunnable;

    .line 278
    .line 279
    invoke-direct {v3, p0}, Lcom/android/server/input/InputManagerService$KeyCountRunnable;-><init>(Lcom/android/server/input/InputManagerService;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    .line 284
    .line 285
    goto :goto_2

    .line 286
    :catchall_1
    move-exception p0

    .line 287
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 288
    throw p0

    .line 289
    :goto_1
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 290
    throw p0

    .line 291
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    const/16 v3, 0x8f

    .line 296
    .line 297
    if-ne v1, v3, :cond_8

    .line 298
    .line 299
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    const/4 v3, 0x0

    .line 304
    if-nez v1, :cond_6

    .line 305
    .line 306
    move v1, v2

    .line 307
    goto :goto_3

    .line 308
    :cond_6
    move v1, v3

    .line 309
    :goto_3
    const/high16 v4, 0x1000000

    .line 310
    .line 311
    and-int/2addr v4, p2

    .line 312
    if-eqz v4, :cond_7

    .line 313
    .line 314
    move v3, v2

    .line 315
    :cond_7
    if-nez v1, :cond_8

    .line 316
    .line 317
    if-nez v3, :cond_8

    .line 318
    .line 319
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 320
    .line 321
    monitor-enter v1

    .line 322
    :try_start_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isNumLockOn()Z

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    const-string v4, "InputManager"

    .line 327
    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 344
    .line 345
    iput-boolean v3, v0, Lcom/android/server/input/PersistentDataStore;->mNumLockState:Z

    .line 346
    .line 347
    iput-boolean v2, v0, Lcom/android/server/input/PersistentDataStore;->mDirtyEtc:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 348
    .line 349
    :try_start_6
    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeededEtc()V

    .line 350
    .line 351
    .line 352
    monitor-exit v1

    .line 353
    goto :goto_5

    .line 354
    :catchall_2
    move-exception p0

    .line 355
    goto :goto_4

    .line 356
    :catchall_3
    move-exception p1

    .line 357
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 358
    .line 359
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeededEtc()V

    .line 360
    .line 361
    .line 362
    throw p1

    .line 363
    :goto_4
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 364
    throw p0

    .line 365
    :cond_8
    :goto_5
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 366
    .line 367
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    .line 368
    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InputManagerCallback;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    .line 370
    .line 371
    .line 372
    move-result p0

    .line 373
    return p0

    .line 374
    :catchall_4
    move-exception p0

    .line 375
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 376
    throw p0
.end method

.method public final interceptMotionBeforeQueueingNonInteractive(IIIJI)I
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Lcom/android/server/wm/InputManagerCallback;

    .line 5
    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move-wide v4, p4

    .line 10
    move v6, p6

    .line 11
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/InputManagerCallback;->interceptMotionBeforeQueueingNonInteractive(IIIJI)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final interceptQuickAccess(Z)Z
    .locals 9

    .line 1
    const-string v0, "QuickAccess info: "

    .line 2
    .line 3
    const-string/jumbo v1, "invalid format for QuickAccess: "

    .line 4
    .line 5
    .line 6
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const-string v4, "InputManager"

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const-string p0, "QuickAccess: system not ready"

    .line 14
    .line 15
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return v3

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v5, "SemInputDeviceManagerService"

    .line 22
    .line 23
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    const/4 v6, 0x1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    move p1, v6

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move p1, v5

    .line 36
    :goto_0
    invoke-virtual {v2, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getScrubPosition(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :try_start_0
    const-string v2, " "

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    array-length v7, v2

    .line 47
    const/4 v8, 0x3

    .line 48
    if-ge v7, v8, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return v3

    .line 58
    :cond_2
    aget-object v1, v2, v3

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    aget-object v6, v2, v6

    .line 65
    .line 66
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    aget-object v2, v2, v5

    .line 71
    .line 72
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", ("

    .line 85
    .line 86
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, ", "

    .line 93
    .line 94
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ")"

    .line 101
    .line 102
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 113
    .line 114
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    .line 115
    .line 116
    invoke-virtual {p0, v1, v6, v2}, Lcom/android/server/wm/InputManagerCallback;->interceptQuickAccess(IFF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    return v3

    .line 120
    :catch_0
    const-string p0, "NPE on QuickAccess: "

    .line 121
    .line 122
    invoke-static {p0, p1, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :catch_1
    const-string p0, "NFE on QuickAccess: "

    .line 127
    .line 128
    invoke-static {p0, p1, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_1
    return v3
.end method

.method public final isDefaultPointerIconChanged()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isInTabletMode()I
    .locals 3

    .line 1
    const-string v0, "android.permission.TABLET_MODE"

    .line 2
    .line 3
    const-string/jumbo v1, "isInTabletMode()"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 14
    .line 15
    const/16 v0, -0x100

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, -0x1

    .line 19
    invoke-interface {p0, v2, v0, v1}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 25
    .line 26
    const-string v0, "Requires TABLET_MODE permission"

    .line 27
    .line 28
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public final isMicMuted()I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    const/16 v0, -0x100

    .line 4
    .line 5
    const/16 v1, 0xe

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    invoke-interface {p0, v2, v0, v1}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final isPerDisplayTouchModeEnabled()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x1110004

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final isSpayFullAppInstalled()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string/jumbo v1, "com.samsung.android.spay"

    .line 9
    .line 10
    .line 11
    const/16 v2, 0x80

    .line 12
    .line 13
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 20
    .line 21
    const-string/jumbo v1, "com.samsung.android.spay.is_stub"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    xor-int/lit8 v0, p0, 0x1

    .line 29
    .line 30
    :catch_0
    :cond_0
    return v0
.end method

.method public final isUidTouched(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->isUidTouched(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isVibrating(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->isVibrating(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic lambda$controlSpenWithToken$1()V
    .locals 2

    .line 1
    const-string v0, "InputManager"

    .line 2
    .line 3
    const-string/jumbo v1, "mSpenContolToken died"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSpenControlToken:Landroid/os/IBinder;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mSpenDeviceId:I

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->enableInputDevice(I)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mSpenControlToken:Landroid/os/IBinder;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final synthetic lambda$createSpyWindowGestureMonitor$0(Landroid/view/InputChannel;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->removeSpyWindowGestureMonitor(Landroid/os/IBinder;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final synthetic lambda$sendKeyboardWirelessKeyboardShare$11()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSharedKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    const-wide/32 v0, 0xea60

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final synthetic lambda$sendKeyboardWirelessKeyboardShare$12()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSharedKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final monitor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 5
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 9
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 13
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 21
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/server/input/BatteryController;->monitor()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/server/input/PointerIconCache;->monitor()V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 32
    .line 33
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->monitor()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 39
    throw p0

    .line 40
    :catchall_1
    move-exception p0

    .line 41
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 42
    throw p0

    .line 43
    :catchall_2
    move-exception p0

    .line 44
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 45
    throw p0

    .line 46
    :catchall_3
    move-exception p0

    .line 47
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 48
    throw p0

    .line 49
    :catchall_4
    move-exception p0

    .line 50
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 51
    throw p0
.end method

.method public final monitorGestureInput(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/InputMonitor;
    .locals 1

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/input/InputManagerService;->monitorGestureInputFiltered(Landroid/os/IBinder;Ljava/lang/String;II)Landroid/view/InputMonitor;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final monitorGestureInputFiltered(Landroid/os/IBinder;Ljava/lang/String;II)Landroid/view/InputMonitor;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    move v5, p3

    .line 4
    const-string v2, "Could not create gesture monitor surface on display: "

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "android.permission.MONITOR_INPUT"

    .line 8
    .line 9
    const-string/jumbo v6, "monitorGestureInput()"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v4, v6, v3}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_2

    .line 17
    .line 18
    const-string/jumbo v3, "name must not be null."

    .line 19
    .line 20
    .line 21
    invoke-static {p2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-string/jumbo v3, "token must not be null."

    .line 25
    .line 26
    .line 27
    move-object v4, p1

    .line 28
    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    if-ltz v5, :cond_1

    .line 32
    .line 33
    const-string v3, "[Gesture Monitor] "

    .line 34
    .line 35
    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 48
    .line 49
    .line 50
    move-result-wide v9

    .line 51
    :try_start_0
    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 52
    .line 53
    check-cast v1, Lcom/android/server/wm/InputManagerCallback;

    .line 54
    .line 55
    invoke-virtual {v1, p3, v3}, Lcom/android/server/wm/InputManagerCallback;->createSurfaceForGestureMonitor(ILjava/lang/String;)Landroid/view/SurfaceControl;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    if-eqz v11, :cond_0

    .line 60
    .line 61
    move-object v1, p0

    .line 62
    move-object v2, p1

    .line 63
    move-object v4, v11

    .line 64
    move v5, p3

    .line 65
    move/from16 v8, p4

    .line 66
    .line 67
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/input/InputManagerService;->createSpyWindowGestureMonitor(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/SurfaceControl;IIII)Landroid/view/InputChannel;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v2, Landroid/view/InputMonitor;

    .line 72
    .line 73
    new-instance v3, Lcom/android/server/input/InputManagerService$InputMonitorHost;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$InputMonitorHost;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Landroid/view/SurfaceControl;

    .line 83
    .line 84
    const-string v4, "IMS.monitorGestureInput"

    .line 85
    .line 86
    invoke-direct {v0, v11, v4}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, v1, v3, v0}, Landroid/view/InputMonitor;-><init>(Landroid/view/InputChannel;Landroid/view/IInputMonitorHost;Landroid/view/SurfaceControl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    .line 94
    .line 95
    return-object v2

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :goto_0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    .line 118
    .line 119
    throw v0

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 121
    .line 122
    const-string/jumbo v1, "displayId must >= 0."

    .line 123
    .line 124
    .line 125
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    .line 130
    .line 131
    const-string v1, "Requires MONITOR_INPUT permission"

    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0
.end method

.method public final monitorInput(Ljava/lang/String;I)Landroid/view/InputChannel;
    .locals 1

    const v0, 0xffff

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;II)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0
.end method

.method public final monitorInput(Ljava/lang/String;II)Landroid/view/InputChannel;
    .locals 1

    .line 2
    const-string/jumbo v0, "inputChannelName not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-interface {p0, p2, p1, v0, p3}, Lcom/android/server/input/NativeInputManagerService;->createInputMonitor(ILjava/lang/String;II)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "displayId must >= 0."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final monitorInputForBinder(Ljava/lang/String;II)Landroid/view/InputChannel;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x3e8

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-string v3, "android.permission.MONITOR_INPUT"

    .line 16
    .line 17
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 25
    .line 26
    const-string/jumbo p1, "can only call from system. "

    .line 27
    .line 28
    .line 29
    invoke-static {v1, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;II)Landroid/view/InputChannel;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public final needGamePadRemapping(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

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
    if-nez p1, :cond_1

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfileLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfile:Ljava/util/Map;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v2, -0x1

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast p0, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {p0}, Lcom/android/server/input/GamePadRemapper;->isValidId(I)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_3

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    :cond_3
    :goto_0
    monitor-exit v1

    .line 47
    :goto_1
    return v0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final notifyConfigurationChanged(J)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    iget-object p2, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 16
    .line 17
    new-instance v0, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 23
    .line 24
    .line 25
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter p2

    .line 32
    :try_start_1
    iget-boolean p1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    monitor-exit p2

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p0

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final notifyDisplayIdChangedByUser(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "notifyDisplayIdChangedByUser: "

    .line 2
    .line 3
    .line 4
    const-string v1, "InputManager"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    .line 10
    .line 11
    if-eq v0, p1, :cond_0

    .line 12
    .line 13
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final notifyDropWindow(Landroid/os/IBinder;FF)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 10
    .line 11
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda3;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DragDropController;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {v1, p1, p0, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final notifyFocusChanged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 8
    .line 9
    new-instance v1, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final notifyInputChannelBroken(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    .line 5
    .line 6
    check-cast v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->removeSpyWindowGestureMonitor(Landroid/os/IBinder;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_4

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 22
    .line 23
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    .line 24
    .line 25
    const-string v0, "WINDOW DIED "

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 36
    .line 37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 38
    .line 39
    .line 40
    monitor-enter v1

    .line 41
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lcom/android/server/wm/WindowState;

    .line 50
    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    const-string p1, "WindowManager"

    .line 54
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_1
    move-exception p0

    .line 75
    goto :goto_3

    .line 76
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 78
    .line 79
    .line 80
    :goto_2
    return-void

    .line 81
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    throw p0
.end method

.method public final notifyInputDevicesChanged([Landroid/view/InputDevice;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 14
    .line 15
    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final notifyMultiFingerGesture(II)I
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mCurrentThreeTapBehavior:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x1

    .line 9
    if-ne p1, v2, :cond_1

    .line 10
    .line 11
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mCurrentFourTapBehavior:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v3, 0x2

    .line 15
    if-ne p1, v3, :cond_2

    .line 16
    .line 17
    move v2, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 v3, 0x3

    .line 20
    if-ne p1, v3, :cond_3

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_3
    move v2, v1

    .line 24
    :goto_0
    sget-boolean v3, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureEnable:Z

    .line 25
    .line 26
    const-string v4, "InputManager"

    .line 27
    .line 28
    if-eqz v3, :cond_4

    .line 29
    .line 30
    const-string/jumbo v3, "notifyMultiFingerGesture: "

    .line 31
    .line 32
    .line 33
    const-string v5, " "

    .line 34
    .line 35
    invoke-static {p1, v2, v3, v5, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "Not support multi finger gesture "

    .line 42
    .line 43
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget v2, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 47
    .line 48
    const-string v3, " 0"

    .line 49
    .line 50
    invoke-static {p1, v2, v3, v4}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    move v2, v1

    .line 54
    :goto_1
    invoke-virtual {p0, v2, p2}, Lcom/android/server/input/InputManagerService;->sendMultiFingerGesture(II)V

    .line 55
    .line 56
    .line 57
    if-ne v2, v0, :cond_5

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_5
    move v0, v1

    .line 61
    :goto_2
    return v0
.end method

.method public final notifyNoFocusedWindowAnr(Landroid/view/InputApplicationHandle;)V
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "Application does not have a focused window"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/android/server/wm/InputManagerCallback;->timeoutMessage(Ljava/util/OptionalInt;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/android/internal/os/TimeoutRecord;->forInputDispatchNoFocusedWindow(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnrController:Lcom/android/server/wm/AnrController;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string v1, "Blamed "

    .line 30
    .line 31
    const-string v2, "ANR in "

    .line 32
    .line 33
    const-string v3, "App is in stopped state:"

    .line 34
    .line 35
    const-string v4, "Unknown app appToken:"

    .line 36
    .line 37
    :try_start_0
    iget-object v5, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 38
    .line 39
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->notifyAppUnresponsiveStarted()V

    .line 40
    .line 41
    .line 42
    iget-object v5, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 43
    .line 44
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->preDumpIfLockTooSlowStarted()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/wm/AnrController;->preDumpIfLockTooSlow()V

    .line 48
    .line 49
    .line 50
    iget-object v5, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->preDumpIfLockTooSlowEnded()V

    .line 53
    .line 54
    .line 55
    iget-object v5, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnGlobalLockStarted()V

    .line 58
    .line 59
    .line 60
    iget-object v5, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 61
    .line 62
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 63
    .line 64
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 65
    .line 66
    .line 67
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    iget-object v6, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 69
    .line 70
    invoke-virtual {v6}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnGlobalLockEnded()V

    .line 71
    .line 72
    .line 73
    iget-object v6, p1, Landroid/view/InputApplicationHandle;->token:Landroid/os/IBinder;

    .line 74
    .line 75
    invoke-static {v6}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    if-nez v6, :cond_1

    .line 80
    .line 81
    const-string p0, "WindowManager"

    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p1, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p1, ". Dropping notifyNoFocusedWindowAnr request"

    .line 94
    .line 95
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 107
    .line 108
    .line 109
    :cond_0
    :goto_1
    iget-object p0, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->notifyAppUnresponsiveEnded()V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_8

    .line 115
    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto/16 :goto_9

    .line 118
    .line 119
    :cond_1
    :try_start_2
    iget-boolean v4, v6, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 120
    .line 121
    if-eqz v4, :cond_2

    .line 122
    .line 123
    const-string p0, "WindowManager"

    .line 124
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p1, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p1, ". Dropping notifyNoFocusedWindowAnr request"

    .line 136
    .line 137
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    monitor-exit v5

    .line 148
    goto :goto_0

    .line 149
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 150
    .line 151
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 152
    .line 153
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    invoke-virtual {p1, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    const/4 v3, 0x0

    .line 162
    if-eqz p1, :cond_3

    .line 163
    .line 164
    iget-object v4, p1, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 165
    .line 166
    iget-object v4, v4, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_3
    move-object v4, v3

    .line 170
    :goto_2
    iget-object v7, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 171
    .line 172
    invoke-virtual {v7, v4}, Lcom/android/server/wm/WindowManagerService;->getInputTargetFromToken(Landroid/os/IBinder;)Lcom/android/server/wm/InputTarget;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    const/4 v8, 0x0

    .line 177
    if-eqz v7, :cond_7

    .line 178
    .line 179
    invoke-interface {v7}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 184
    .line 185
    .line 186
    move-result-wide v9

    .line 187
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 188
    .line 189
    iget-wide v11, p1, Lcom/android/server/wm/InputMonitor;->mInputFocusRequestTimeMillis:J

    .line 190
    .line 191
    sub-long/2addr v9, v11

    .line 192
    iget-object p1, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 193
    .line 194
    sget-object v11, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    .line 195
    .line 196
    if-eqz p1, :cond_6

    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    .line 199
    .line 200
    .line 201
    move-result v11

    .line 202
    if-nez v11, :cond_4

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_4
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 206
    .line 207
    if-nez p1, :cond_5

    .line 208
    .line 209
    sget p1, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getInputDispatchingTimeoutMillis()J

    .line 213
    .line 214
    .line 215
    move-result-wide v11

    .line 216
    goto :goto_5

    .line 217
    :cond_6
    :goto_3
    sget p1, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    .line 218
    .line 219
    :goto_4
    int-to-long v11, p1

    .line 220
    :goto_5
    cmp-long p1, v9, v11

    .line 221
    .line 222
    if-ltz p1, :cond_8

    .line 223
    .line 224
    const/4 v8, 0x1

    .line 225
    goto :goto_6

    .line 226
    :cond_7
    move-object v7, v3

    .line 227
    :cond_8
    :goto_6
    if-nez v8, :cond_9

    .line 228
    .line 229
    const-string p1, "WindowManager"

    .line 230
    .line 231
    new-instance v9, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v2, ".  Reason: "

    .line 244
    .line 245
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget-object v2, v0, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-static {p1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Lcom/android/server/wm/AnrController;->mUnresponsiveAppByDisplay:Landroid/util/SparseArray;

    .line 261
    .line 262
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    invoke-virtual {p1, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    :cond_9
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 271
    .line 272
    .line 273
    if-eqz v8, :cond_a

    .line 274
    .line 275
    invoke-virtual {p0, v4, v0}, Lcom/android/server/wm/AnrController;->notifyWindowUnresponsive(Landroid/os/IBinder;Lcom/android/internal/os/TimeoutRecord;)Z

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    if-eqz p1, :cond_a

    .line 280
    .line 281
    const-string p1, "WindowManager"

    .line 282
    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v1, " using pending focus request. Focused activity: "

    .line 296
    .line 297
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    goto :goto_7

    .line 315
    :catchall_1
    move-exception p0

    .line 316
    goto :goto_a

    .line 317
    :cond_a
    const/4 p1, -0x1

    .line 318
    invoke-virtual {v6, p1, v0}, Lcom/android/server/wm/ActivityRecord;->inputDispatchingTimedOut(ILcom/android/internal/os/TimeoutRecord;)V

    .line 319
    .line 320
    .line 321
    :goto_7
    if-nez v8, :cond_0

    .line 322
    .line 323
    iget-object p1, v0, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    .line 324
    .line 325
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    new-instance v2, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;

    .line 330
    .line 331
    invoke-direct {v2, p0, v6, v3, p1}, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AnrController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    check-cast v1, Landroid/os/HandlerExecutor;

    .line 335
    .line 336
    invoke-virtual {v1, v2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 337
    .line 338
    .line 339
    goto/16 :goto_1

    .line 340
    .line 341
    :goto_8
    return-void

    .line 342
    :goto_9
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 343
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 344
    .line 345
    .line 346
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 347
    :goto_a
    iget-object p1, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 348
    .line 349
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->notifyAppUnresponsiveEnded()V

    .line 350
    .line 351
    .line 352
    throw p0
.end method

.method public final notifyPogoKeyboardNotMatch()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mBootCompleted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x1041031

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mToastDialog:Lcom/android/server/input/ToastDialog;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    .line 30
    .line 31
    const/4 v0, 0x7

    .line 32
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mNotifyPogoKeyboardNotMatchPending:Z

    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final notifyQuickAccess(IFF)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 2
    .line 3
    const-string v1, "InputManager"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "notifyQuickAccess: system not ready"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v2, 0x3e8

    .line 19
    .line 20
    if-ne v0, v2, :cond_1

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v2, "notifyQuickAccess: info="

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ", x="

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ", y="

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 57
    .line 58
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/InputManagerCallback;->interceptQuickAccess(IFF)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public final notifySensorAccuracy(III)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v3, v1, :cond_0

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    .line 30
    .line 31
    check-cast v4, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :goto_1
    if-ge v2, v1, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    .line 45
    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    :try_start_1
    iget-object v3, v0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mListener:Landroid/hardware/input/IInputSensorEventListener;

    .line 58
    .line 59
    invoke-interface {v3, p1, p2, p3}, Landroid/hardware/input/IInputSensorEventListener;->onInputSensorAccuracyChanged(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception v3

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v5, "Failed to notify process "

    .line 67
    .line 68
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget v5, v0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mPid:I

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v5, " that sensor accuracy notified, assuming it died."

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const-string v5, "InputManager"

    .line 86
    .line 87
    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->binderDied()V

    .line 91
    .line 92
    .line 93
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    .line 97
    .line 98
    check-cast p0, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    throw p0
.end method

.method public final notifySensorEvent(IIIJ[F)V
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "InputManager"

    .line 7
    .line 8
    const-string/jumbo v2, "notifySensorEvent: deviceId="

    .line 9
    .line 10
    .line 11
    const-string v3, " sensorType="

    .line 12
    .line 13
    const-string v4, " values="

    .line 14
    .line 15
    move v12, p1

    .line 16
    move/from16 v13, p2

    .line 17
    .line 18
    invoke-static {p1, v13, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static/range {p6 .. p6}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v12, p1

    .line 38
    move/from16 v13, p2

    .line 39
    .line 40
    :goto_0
    iget-object v0, v1, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    .line 41
    .line 42
    check-cast v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    .line 46
    .line 47
    iget-object v2, v1, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v2

    .line 50
    :try_start_0
    iget-object v0, v1, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/4 v0, 0x0

    .line 57
    move v4, v0

    .line 58
    :goto_1
    if-ge v4, v3, :cond_1

    .line 59
    .line 60
    iget-object v5, v1, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    .line 61
    .line 62
    iget-object v6, v1, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    .line 69
    .line 70
    check-cast v5, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    goto :goto_4

    .line 80
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    move v2, v0

    .line 82
    :goto_2
    if-ge v2, v3, :cond_2

    .line 83
    .line 84
    iget-object v0, v1, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    .line 85
    .line 86
    check-cast v0, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    move-object v4, v0

    .line 93
    check-cast v4, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    :try_start_1
    iget-object v5, v4, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mListener:Landroid/hardware/input/IInputSensorEventListener;

    .line 99
    .line 100
    move v6, p1

    .line 101
    move/from16 v7, p2

    .line 102
    .line 103
    move/from16 v8, p3

    .line 104
    .line 105
    move-wide/from16 v9, p4

    .line 106
    .line 107
    move-object/from16 v11, p6

    .line 108
    .line 109
    invoke-interface/range {v5 .. v11}, Landroid/hardware/input/IInputSensorEventListener;->onInputSensorChanged(IIIJ[F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :catch_0
    move-exception v0

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v6, "Failed to notify process "

    .line 117
    .line 118
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget v6, v4, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mPid:I

    .line 122
    .line 123
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v6, " that sensor event notified, assuming it died."

    .line 127
    .line 128
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    const-string v6, "InputManager"

    .line 136
    .line 137
    invoke-static {v6, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->binderDied()V

    .line 141
    .line 142
    .line 143
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_2
    iget-object v0, v1, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    .line 147
    .line 148
    check-cast v0, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :goto_4
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    throw v0
.end method

.method public final notifySpenCount(II)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->IFW_SPEN_PRESSURE_SA_LOGGING:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string p0, "SPENDRAW"

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    const-string p0, "SPENSTPR"

    .line 11
    .line 12
    invoke-static {p0, p2}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final notifyStickyModifierStateChanged(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mStickyModifierStateController:Lcom/android/server/input/StickyModifierStateController;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/input/StickyModifierStateController;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v1, "ModifierStateController"

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "Sticky modifier state changed, modifierState = "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, ", lockedModifierState = "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v1, v0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    :try_start_0
    iget-object v3, v0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-ge v2, v3, :cond_1

    .line 48
    .line 49
    iget-object v3, v0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    :try_start_1
    iget-object v4, v3, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mListener:Landroid/hardware/input/IStickyModifierStateListener;

    .line 61
    .line 62
    invoke-interface {v4, p1, p2}, Landroid/hardware/input/IStickyModifierStateListener;->onStickyModifierStateChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception v4

    .line 67
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v6, "Failed to notify process "

    .line 70
    .line 71
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget v6, v3, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mPid:I

    .line 75
    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v6, " that sticky modifier state changed, assuming it died."

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const-string v6, "ModifierStateController"

    .line 89
    .line 90
    invoke-static {v6, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->binderDied()V

    .line 94
    .line 95
    .line 96
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_2

    .line 101
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 103
    .line 104
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputManagerCallback;->notifyStickyModifierStateChanged(I)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    throw p0
.end method

.method public final notifyStylusGestureStarted(IJ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onStylusGestureStarted(J)V

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    :goto_0
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final notifySwitch(JII)V
    .locals 8

    .line 1
    const-string v0, "InputManager"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "notifySwitch: values="

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", mask="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 42
    .line 43
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 47
    .line 48
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 51
    .line 52
    const/16 v3, 0x6b

    .line 53
    .line 54
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 59
    .line 60
    .line 61
    and-int/lit8 v0, p4, 0x1

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    const/16 v3, 0x20

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    and-int/lit8 v0, p3, 0x1

    .line 69
    .line 70
    if-nez v0, :cond_0

    .line 71
    .line 72
    move v4, v2

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    move v4, v1

    .line 75
    :goto_0
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    .line 76
    .line 77
    monitor-enter v5

    .line 78
    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 79
    .line 80
    if-eqz v6, :cond_1

    .line 81
    .line 82
    move v6, v1

    .line 83
    :goto_1
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    .line 84
    .line 85
    check-cast v7, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-ge v6, v7, :cond_1

    .line 92
    .line 93
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    .line 94
    .line 95
    check-cast v7, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    check-cast v7, Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;

    .line 102
    .line 103
    invoke-interface {v7, v4}, Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;->notifyLidSwitchChanged(Z)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v6, v6, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_3

    .line 111
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    long-to-int v5, p1

    .line 117
    iput v5, v4, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 118
    .line 119
    shr-long v5, p1, v3

    .line 120
    .line 121
    long-to-int v5, v5

    .line 122
    iput v5, v4, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 123
    .line 124
    if-nez v0, :cond_2

    .line 125
    .line 126
    move v0, v2

    .line 127
    goto :goto_2

    .line 128
    :cond_2
    move v0, v1

    .line 129
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iput-object v0, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 134
    .line 135
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 136
    .line 137
    const/16 v5, 0x67

    .line 138
    .line 139
    invoke-virtual {v0, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 144
    .line 145
    .line 146
    iput-wide p1, p0, Lcom/android/server/input/InputManagerService;->mLastLidEventTime:J

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :goto_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    throw p0

    .line 151
    :cond_3
    :goto_4
    const/high16 v0, 0x800000

    .line 152
    .line 153
    and-int/2addr v0, p4

    .line 154
    if-eqz v0, :cond_5

    .line 155
    .line 156
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    .line 157
    .line 158
    monitor-enter v0

    .line 159
    :try_start_2
    iget-boolean v4, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 160
    .line 161
    if-eqz v4, :cond_4

    .line 162
    .line 163
    move v4, v1

    .line 164
    :goto_5
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    .line 165
    .line 166
    check-cast v5, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-ge v4, v5, :cond_4

    .line 173
    .line 174
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    .line 175
    .line 176
    check-cast v5, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    check-cast v5, Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;

    .line 183
    .line 184
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    add-int/lit8 v4, v4, 0x1

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :catchall_1
    move-exception p0

    .line 191
    goto :goto_6

    .line 192
    :cond_4
    monitor-exit v0

    .line 193
    goto :goto_7

    .line 194
    :goto_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 195
    throw p0

    .line 196
    :cond_5
    :goto_7
    const/high16 v0, 0x80000

    .line 197
    .line 198
    and-int v4, p4, v0

    .line 199
    .line 200
    if-eqz v4, :cond_7

    .line 201
    .line 202
    and-int/2addr v0, p3

    .line 203
    if-nez v0, :cond_6

    .line 204
    .line 205
    move v0, v2

    .line 206
    goto :goto_8

    .line 207
    :cond_6
    move v0, v1

    .line 208
    :goto_8
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 209
    .line 210
    check-cast v4, Lcom/android/server/wm/InputManagerCallback;

    .line 211
    .line 212
    iget-object v4, v4, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 213
    .line 214
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 215
    .line 216
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 217
    .line 218
    invoke-virtual {v4, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->notifyPenSwitchChanged(JZZ)V

    .line 219
    .line 220
    .line 221
    :cond_7
    const/high16 v0, 0x100000

    .line 222
    .line 223
    and-int v4, p4, v0

    .line 224
    .line 225
    if-eqz v4, :cond_9

    .line 226
    .line 227
    and-int/2addr v0, p3

    .line 228
    if-nez v0, :cond_8

    .line 229
    .line 230
    move v0, v2

    .line 231
    goto :goto_9

    .line 232
    :cond_8
    move v0, v1

    .line 233
    :goto_9
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 234
    .line 235
    check-cast v4, Lcom/android/server/wm/InputManagerCallback;

    .line 236
    .line 237
    iget-object v4, v4, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 238
    .line 239
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 240
    .line 241
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 242
    .line 243
    invoke-virtual {v4, p1, p2, v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->notifyPenSwitchChanged(JZZ)V

    .line 244
    .line 245
    .line 246
    :cond_9
    const/high16 v0, 0x40000000    # 2.0f

    .line 247
    .line 248
    and-int v4, p4, v0

    .line 249
    .line 250
    if-eqz v4, :cond_b

    .line 251
    .line 252
    and-int/2addr v0, p3

    .line 253
    if-eqz v0, :cond_a

    .line 254
    .line 255
    move v0, v2

    .line 256
    goto :goto_a

    .line 257
    :cond_a
    move v0, v1

    .line 258
    :goto_a
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSpenCoverAttached:Z

    .line 259
    .line 260
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateWacomMode()V

    .line 261
    .line 262
    .line 263
    :cond_b
    and-int/lit16 v0, p4, 0x200

    .line 264
    .line 265
    if-eqz v0, :cond_d

    .line 266
    .line 267
    and-int/lit16 v0, p3, 0x200

    .line 268
    .line 269
    if-eqz v0, :cond_c

    .line 270
    .line 271
    move v0, v2

    .line 272
    goto :goto_b

    .line 273
    :cond_c
    move v0, v1

    .line 274
    :goto_b
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 275
    .line 276
    check-cast v4, Lcom/android/server/wm/InputManagerCallback;

    .line 277
    .line 278
    invoke-virtual {v4, p1, p2, v0}, Lcom/android/server/wm/InputManagerCallback;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 279
    .line 280
    .line 281
    const/4 v4, 0x2

    .line 282
    invoke-virtual {p0, v4, v0}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    .line 283
    .line 284
    .line 285
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    .line 286
    .line 287
    if-eqz v0, :cond_e

    .line 288
    .line 289
    and-int/lit16 v0, p4, 0xd4

    .line 290
    .line 291
    if-eqz v0, :cond_e

    .line 292
    .line 293
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 294
    .line 295
    check-cast v0, Lcom/android/server/WiredAccessoryManager;

    .line 296
    .line 297
    invoke-virtual {v0, p3, p4}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(II)V

    .line 298
    .line 299
    .line 300
    :cond_e
    and-int/lit8 v0, p4, 0x2

    .line 301
    .line 302
    if-eqz v0, :cond_10

    .line 303
    .line 304
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    long-to-int v4, p1

    .line 309
    iput v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 310
    .line 311
    shr-long v3, p1, v3

    .line 312
    .line 313
    long-to-int v3, v3

    .line 314
    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 315
    .line 316
    and-int/lit8 v3, p3, 0x2

    .line 317
    .line 318
    if-eqz v3, :cond_f

    .line 319
    .line 320
    move v3, v2

    .line 321
    goto :goto_c

    .line 322
    :cond_f
    move v3, v1

    .line 323
    :goto_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 328
    .line 329
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 330
    .line 331
    const/4 v4, 0x3

    .line 332
    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 337
    .line 338
    .line 339
    :cond_10
    and-int/lit16 v0, p4, 0x4000

    .line 340
    .line 341
    if-eqz v0, :cond_12

    .line 342
    .line 343
    and-int/lit16 v0, p3, 0x4000

    .line 344
    .line 345
    if-eqz v0, :cond_11

    .line 346
    .line 347
    move v0, v2

    .line 348
    goto :goto_d

    .line 349
    :cond_11
    move v0, v1

    .line 350
    :goto_d
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 351
    .line 352
    const-class v4, Landroid/media/AudioManager;

    .line 353
    .line 354
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    check-cast v3, Landroid/media/AudioManager;

    .line 359
    .line 360
    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->setMicrophoneMuteFromSwitch(Z)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p0, v2, v0}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    .line 364
    .line 365
    .line 366
    :cond_12
    const/high16 v0, 0x200000

    .line 367
    .line 368
    and-int v3, p4, v0

    .line 369
    .line 370
    if-eqz v3, :cond_15

    .line 371
    .line 372
    and-int/2addr v0, p3

    .line 373
    if-nez v0, :cond_13

    .line 374
    .line 375
    move v0, v2

    .line 376
    goto :goto_e

    .line 377
    :cond_13
    move v0, v1

    .line 378
    :goto_e
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 379
    .line 380
    if-nez v3, :cond_14

    .line 381
    .line 382
    const-class v3, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 383
    .line 384
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    check-cast v3, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 389
    .line 390
    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 391
    .line 392
    :cond_14
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 393
    .line 394
    invoke-virtual {v3, p1, p2, v0}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->notifyCoverSwitchStateChanged(JZ)V

    .line 395
    .line 396
    .line 397
    :cond_15
    const/high16 v0, 0x8000000

    .line 398
    .line 399
    and-int v3, p4, v0

    .line 400
    .line 401
    if-eqz v3, :cond_1c

    .line 402
    .line 403
    and-int/2addr v0, p3

    .line 404
    if-eqz v0, :cond_16

    .line 405
    .line 406
    move v0, v2

    .line 407
    goto :goto_f

    .line 408
    :cond_16
    move v0, v1

    .line 409
    :goto_f
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mSecAccessoryManagerCallbacks:Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;

    .line 410
    .line 411
    if-eqz v3, :cond_1b

    .line 412
    .line 413
    check-cast v3, Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 414
    .line 415
    new-instance v4, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    const-string/jumbo v5, "notifyUnverifiedCoverAttachChanged ignore whenNanos = "

    .line 418
    .line 419
    .line 420
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    const-string v5, ", attached = "

    .line 427
    .line 428
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    const-string v5, "SAccessoryManager_SAccessoryManager"

    .line 439
    .line 440
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    iget-object v4, v3, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    .line 444
    .line 445
    const-string/jumbo v6, "sensor"

    .line 446
    .line 447
    .line 448
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    check-cast v4, Landroid/hardware/SensorManager;

    .line 453
    .line 454
    const v6, 0x10067

    .line 455
    .line 456
    .line 457
    invoke-virtual {v4, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    if-nez v4, :cond_1c

    .line 462
    .line 463
    const-string v4, "SM-F900"

    .line 464
    .line 465
    iget-object v6, v3, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    .line 466
    .line 467
    if-nez v0, :cond_18

    .line 468
    .line 469
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 470
    .line 471
    .line 472
    move-result v7

    .line 473
    if-eqz v7, :cond_18

    .line 474
    .line 475
    iget-object v4, v3, Lcom/samsung/accessory/manager/SAccessoryManager;->mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

    .line 476
    .line 477
    invoke-virtual {v4}, Lcom/samsung/accessory/manager/DetachCheck;->requestStartTypeS()[B

    .line 478
    .line 479
    .line 480
    move-result-object v6

    .line 481
    if-eqz v6, :cond_17

    .line 482
    .line 483
    array-length v6, v6

    .line 484
    const/16 v7, 0x10

    .line 485
    .line 486
    if-ne v6, v7, :cond_17

    .line 487
    .line 488
    invoke-virtual {v4}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    .line 489
    .line 490
    .line 491
    const-string p1, "auth chip exists. will retry to check after TIME_OUT_DETACH_RETRY"

    .line 492
    .line 493
    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    .line 495
    .line 496
    iget-object p1, v3, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    .line 497
    .line 498
    const/16 p2, 0xe

    .line 499
    .line 500
    const-wide/16 v3, 0x3e8

    .line 501
    .line 502
    invoke-virtual {p1, p2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 503
    .line 504
    .line 505
    goto :goto_12

    .line 506
    :cond_17
    invoke-virtual {v4}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    .line 507
    .line 508
    .line 509
    goto :goto_10

    .line 510
    :cond_18
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 511
    .line 512
    .line 513
    move-result v4

    .line 514
    if-eqz v4, :cond_19

    .line 515
    .line 516
    if-eqz v0, :cond_19

    .line 517
    .line 518
    iget-boolean v4, v3, Lcom/samsung/accessory/manager/SAccessoryManager;->authState:Z

    .line 519
    .line 520
    if-eqz v4, :cond_19

    .line 521
    .line 522
    const-string p1, "F900, current auth state is true, so skip authentication"

    .line 523
    .line 524
    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .line 526
    .line 527
    goto :goto_12

    .line 528
    :cond_19
    :goto_10
    iget-object v3, v3, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    .line 529
    .line 530
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    :cond_1a
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 535
    .line 536
    .line 537
    move-result v4

    .line 538
    if-eqz v4, :cond_1c

    .line 539
    .line 540
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v4

    .line 544
    check-cast v4, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    .line 545
    .line 546
    instance-of v5, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 547
    .line 548
    if-eqz v5, :cond_1a

    .line 549
    .line 550
    check-cast v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 551
    .line 552
    invoke-virtual {v4, p1, p2, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onCoverAttached(JZZ)V

    .line 553
    .line 554
    .line 555
    goto :goto_11

    .line 556
    :cond_1b
    const-string p1, "InputManager"

    .line 557
    .line 558
    const-string p2, "UnVerifiedCoverAttachCallbacks is not registered"

    .line 559
    .line 560
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .line 562
    .line 563
    :cond_1c
    :goto_12
    const/high16 p1, -0x80000000

    .line 564
    .line 565
    and-int p2, p4, p1

    .line 566
    .line 567
    if-eqz p2, :cond_1f

    .line 568
    .line 569
    and-int/2addr p1, p3

    .line 570
    if-eqz p1, :cond_1d

    .line 571
    .line 572
    move v1, v2

    .line 573
    :cond_1d
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManagerCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

    .line 574
    .line 575
    check-cast p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;

    .line 576
    .line 577
    iget-object p1, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;->this$1:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;

    .line 578
    .line 579
    if-eqz v1, :cond_1e

    .line 580
    .line 581
    iget-object p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 582
    .line 583
    iget v0, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 584
    .line 585
    or-int/lit8 v0, v0, 0x8

    .line 586
    .line 587
    iput v0, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 588
    .line 589
    goto :goto_13

    .line 590
    :cond_1e
    iget-object p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 591
    .line 592
    iget v0, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 593
    .line 594
    and-int/lit8 v0, v0, -0x9

    .line 595
    .line 596
    iput v0, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 597
    .line 598
    :goto_13
    const-string/jumbo p2, "notifyKeyboardCoverBackfolded: backfolded="

    .line 599
    .line 600
    .line 601
    const-string v0, ", keyboardState="

    .line 602
    .line 603
    invoke-static {p2, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    move-result-object p2

    .line 607
    iget-object p1, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 608
    .line 609
    iget p1, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 610
    .line 611
    const-string v0, "InputMethodManagerServicePhysicalKey"

    .line 612
    .line 613
    invoke-static {p2, p1, v0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 614
    .line 615
    .line 616
    :cond_1f
    const/high16 p1, 0x20000000

    .line 617
    .line 618
    and-int p2, p4, p1

    .line 619
    .line 620
    if-eqz p2, :cond_20

    .line 621
    .line 622
    and-int/2addr p1, p3

    .line 623
    if-eqz p1, :cond_20

    .line 624
    .line 625
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->showingTouchSensitivityNotificationIfNeeded()V

    .line 626
    .line 627
    .line 628
    :cond_20
    return-void
.end method

.method public final notifyUntrustedTouch(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x80

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const v1, 0x1041030

    .line 30
    .line 31
    .line 32
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mToastDialog:Lcom/android/server/input/ToastDialog;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    .line 52
    .line 53
    const/4 p1, 0x7

    .line 54
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final notifyVibratorState(IZ)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "InputManager"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "notifyVibratorState: deviceId="

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " isOn="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mIsVibrating:Landroid/util/SparseBooleanArray;

    .line 37
    .line 38
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->notifyVibratorStateListenersLocked(I)V

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public final notifyVibratorStateListenerLocked(ILandroid/os/IVibratorStateListener;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mIsVibrating:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-interface {p2, p0}, Landroid/os/IVibratorStateListener;->onVibrating(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const-string p1, "InputManager"

    .line 13
    .line 14
    const-string p2, "Vibrator state listener failed to call"

    .line 15
    .line 16
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final notifyVibratorStateListenersLocked(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-boolean p0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "Device "

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, " doesn\'t have vibrator state listener."

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "InputManager"

    .line 33
    .line 34
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x0

    .line 51
    :goto_0
    if-ge v2, v1, :cond_2

    .line 52
    .line 53
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Landroid/os/IVibratorStateListener;

    .line 58
    .line 59
    invoke-virtual {p0, p1, v3}, Lcom/android/server/input/InputManagerService;->notifyVibratorStateListenerLocked(ILandroid/os/IVibratorStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_2
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final notifyWindowResponsive(Landroid/os/IBinder;IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :goto_0
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnrController:Lcom/android/server/wm/AnrController;

    .line 19
    .line 20
    iget-object p3, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 23
    .line 24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 25
    .line 26
    .line 27
    monitor-enter p3

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getInputTargetFromToken(Landroid/os/IBinder;)Lcom/android/server/wm/InputTarget;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/util/OptionalInt;->isPresent()Z

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    if-nez p3, :cond_1

    .line 45
    .line 46
    const-string p0, "WindowManager"

    .line 47
    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string p3, "Failed to notify that window token="

    .line 51
    .line 52
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p1, " was responsive."

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iget-object p0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->inputDispatchingResumed(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    :try_start_1
    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->getPid()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->inputDispatchingResumed(I)V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-void

    .line 101
    :goto_2
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 103
    .line 104
    .line 105
    throw p0
.end method

.method public final notifyWindowUnresponsive(Landroid/os/IBinder;IZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :goto_0
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {p2, p4}, Lcom/android/server/wm/InputManagerCallback;->timeoutMessage(Ljava/util/OptionalInt;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-static {p3}, Lcom/android/internal/os/TimeoutRecord;->forInputDispatchWindowUnresponsive(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnrController:Lcom/android/server/wm/AnrController;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const-string p4, "Failed to notify that window token="

    .line 35
    .line 36
    :try_start_0
    iget-object v0, p3, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->notifyWindowUnresponsiveStarted()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/AnrController;->notifyWindowUnresponsive(Landroid/os/IBinder;Lcom/android/internal/os/TimeoutRecord;)Z

    .line 42
    .line 43
    .line 44
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    :goto_1
    iget-object p0, p3, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->notifyWindowUnresponsiveEnded()V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/util/OptionalInt;->isPresent()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    const-string p0, "WindowManager"

    .line 60
    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, " was unresponsive."

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_3

    .line 84
    :cond_2
    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/AnrController;->notifyWindowUnresponsive(ILcom/android/internal/os/TimeoutRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :goto_2
    return-void

    .line 93
    :goto_3
    iget-object p1, p3, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->notifyWindowUnresponsiveEnded()V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

.method public final onDisplayRemoved(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputManagerService;->updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->displayRemoved(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onInputDevicesChangedListenerDied(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final onLidStateChangedListenerDied(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final onMultiFingerGestureListenerDied(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final onPointerDownOutsideFocus(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 8
    .line 9
    const/16 v0, 0x3e

    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onPointerDownUpCancelOutsideFocus(Landroid/os/IBinder;III)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 13
    .line 14
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 15
    .line 16
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 17
    .line 18
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 23
    .line 24
    const/16 p1, 0x3e

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onPointerIconChangedListenerDied(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final onSensorEventListenerDied(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/input/InputShellCommand;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/input/InputShellCommand$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/android/server/input/InputShellCommand;-><init>(Ljava/util/function/BiConsumer;)V

    .line 9
    .line 10
    .line 11
    move-object v1, p0

    .line 12
    move-object v2, p1

    .line 13
    move-object v3, p2

    .line 14
    move-object v4, p3

    .line 15
    move-object v5, p4

    .line 16
    move-object v6, p5

    .line 17
    move-object v7, p6

    .line 18
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onSwitchEventChangedListenerDied(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedListeners:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final onTabletModeChangedListenerDied(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    .line 5
    .line 6
    iget-object v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    .line 7
    .line 8
    check-cast v1, Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p0
.end method

.method public final onWirelessKeyboardShareChangedListenerDied(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 5

    .line 1
    const-string v0, "Open light session for "

    .line 2
    .line 3
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v2, v3

    .line 21
    :goto_0
    const-string v4, "already registered"

    .line 22
    .line 23
    invoke-static {v2, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/android/server/input/InputManagerService$LightSession;

    .line 27
    .line 28
    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$LightSession;-><init>(Lcom/android/server/input/InputManagerService;ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :try_start_1
    invoke-interface {p3, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :catch_0
    move-exception v3

    .line 38
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 39
    .line 40
    .line 41
    :goto_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-virtual {p0, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    sget-boolean p0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 47
    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    const-string p0, "InputManager"

    .line 51
    .line 52
    new-instance p3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p2, " device "

    .line 61
    .line 62
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_1
    monitor-exit v1

    .line 76
    return-void

    .line 77
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    throw p0
.end method

.method public final pilferPointers(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->pilferPointers_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->pilferPointers(Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final registerBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    .locals 10

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "Battery listener for pid "

    .line 11
    .line 12
    const-string v2, "The battery listener for pid "

    .line 13
    .line 14
    const-string v3, "Cannot register a new battery listener when there is already another registered listener for pid "

    .line 15
    .line 16
    const-string v4, "Battery listener added for pid "

    .line 17
    .line 18
    iget-object v5, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v5

    .line 21
    :try_start_0
    iget-object v6, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    check-cast v6, Lcom/android/server/input/BatteryController$ListenerRecord;

    .line 32
    .line 33
    if-nez v6, :cond_0

    .line 34
    .line 35
    new-instance v6, Lcom/android/server/input/BatteryController$ListenerRecord;

    .line 36
    .line 37
    invoke-direct {v6, p0, v0, p2}, Lcom/android/server/input/BatteryController$ListenerRecord;-><init>(Lcom/android/server/input/BatteryController;ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    :try_start_1
    invoke-interface {p2}, Landroid/hardware/input/IInputDeviceBatteryListener;->asBinder()Landroid/os/IBinder;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    iget-object v8, v6, Lcom/android/server/input/BatteryController$ListenerRecord;->mDeathRecipient:Lcom/android/server/input/BatteryController$ListenerRecord$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    const/4 v9, 0x0

    .line 47
    invoke-interface {v7, v8, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    :try_start_2
    iget-object v7, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    sget-boolean v7, Lcom/android/server/input/BatteryController;->DEBUG:Z

    .line 60
    .line 61
    if-eqz v7, :cond_0

    .line 62
    .line 63
    const-string v7, "BatteryController"

    .line 64
    .line 65
    new-instance v8, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto/16 :goto_2

    .line 83
    .line 84
    :catch_0
    const-string p0, "BatteryController"

    .line 85
    .line 86
    const-string p1, "Client died before battery listener could be registered."

    .line 87
    .line 88
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    monitor-exit v5

    .line 92
    goto :goto_1

    .line 93
    :cond_0
    :goto_0
    iget-object v4, v6, Lcom/android/server/input/BatteryController$ListenerRecord;->mListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    .line 94
    .line 95
    invoke-interface {v4}, Landroid/hardware/input/IInputDeviceBatteryListener;->asBinder()Landroid/os/IBinder;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-interface {p2}, Landroid/hardware/input/IInputDeviceBatteryListener;->asBinder()Landroid/os/IBinder;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    if-ne v4, p2, :cond_4

    .line 104
    .line 105
    iget-object p2, v6, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    .line 106
    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast p2, Landroid/util/ArraySet;

    .line 112
    .line 113
    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-eqz p2, :cond_3

    .line 118
    .line 119
    iget-object p2, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 120
    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    check-cast p2, Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 130
    .line 131
    if-nez p2, :cond_1

    .line 132
    .line 133
    new-instance p2, Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 134
    .line 135
    invoke-direct {p2, p0, p1}, Lcom/android/server/input/BatteryController$DeviceMonitor;-><init>(Lcom/android/server/input/BatteryController;I)V

    .line 136
    .line 137
    .line 138
    iget-object v2, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    .line 139
    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v2, v3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController;->updateBluetoothBatteryMonitoring()V

    .line 148
    .line 149
    .line 150
    :cond_1
    sget-boolean v2, Lcom/android/server/input/BatteryController;->DEBUG:Z

    .line 151
    .line 152
    if-eqz v2, :cond_2

    .line 153
    .line 154
    const-string v2, "BatteryController"

    .line 155
    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v0, " is monitoring deviceId "

    .line 165
    .line 166
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    :cond_2
    const/4 p1, 0x1

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/server/input/BatteryController;->updatePollingLocked(Z)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->getBatteryStateForReporting()Lcom/android/server/input/BatteryController$State;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-static {v6, p0}, Lcom/android/server/input/BatteryController;->notifyBatteryListener(Lcom/android/server/input/BatteryController$ListenerRecord;Lcom/android/server/input/BatteryController$State;)V

    .line 188
    .line 189
    .line 190
    monitor-exit v5

    .line 191
    :goto_1
    return-void

    .line 192
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 193
    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v0, " is already monitoring deviceId "

    .line 203
    .line 204
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p0

    .line 218
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 219
    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p0

    .line 236
    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    throw p0
.end method

.method public final registerDesktopModeStateChangedListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "desktopmode"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v1, Lcom/android/server/input/InputManagerService$13;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$13;-><init>(Lcom/android/server/input/InputManagerService;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final registerFlowPointerDirectionSettingObserver()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/server/input/InputManagerService;->DEX_SETTINGS_URI:Landroid/net/Uri;

    .line 8
    .line 9
    const-string/jumbo v2, "flow_pointer_from_where_dex"

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lcom/android/server/input/InputManagerService$8;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 19
    .line 20
    const/4 v4, 0x4

    .line 21
    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;I)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final registerFlowPointerSettingObserver()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/server/input/InputManagerService;->DEX_SETTINGS_URI:Landroid/net/Uri;

    .line 8
    .line 9
    const-string/jumbo v2, "flow_pointer_is_on_dex"

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lcom/android/server/input/InputManagerService$8;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;I)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "listener must not be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    new-instance v2, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    .line 23
    .line 24
    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    new-instance p1, Ljava/lang/RuntimeException;

    .line 46
    .line 47
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 52
    .line 53
    const-string p1, "The calling process has already registered an InputDevicesChangedListener."

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    throw p0
.end method

.method public final registerKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->registerKeyboardBacklightListener_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-interface {p0, p1, v0}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->registerKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final registerLidStateChangedListener(Landroid/hardware/input/ISemLidStateChangedListener;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "com.samsung.android.permission.LID_STATE"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "registerLidStateChangedListener()"

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidStateLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    new-instance v3, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;

    .line 32
    .line 33
    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ISemLidStateChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/ISemLidStateChangedListener;->asBinder()Landroid/os/IBinder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {p0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    new-instance p1, Ljava/lang/RuntimeException;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string p1, "The calling process has already registered a LidStateChangedListener."

    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    throw p0

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string/jumbo p1, "listener must not be null"

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 79
    .line 80
    const-string p1, "Requires LID_STATE permission"

    .line 81
    .line 82
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0
.end method

.method public final registerLidSwitchCallbackInternal(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    .line 5
    .line 6
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/16 v3, -0x100

    .line 19
    .line 20
    const/4 v4, -0x1

    .line 21
    invoke-interface {v1, v4, v3, v2}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    :cond_0
    invoke-interface {p1, v2}, Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;->notifyLidSwitchChanged(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 32
    .line 33
    const/16 p1, 0x17

    .line 34
    .line 35
    invoke-interface {p0, v4, v3, p1}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final registerMultiFingerGestureListener(Landroid/hardware/input/IMultiFingerGestureListener;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    new-instance v2, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;

    .line 19
    .line 20
    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IMultiFingerGestureListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IMultiFingerGestureListener;->asBinder()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p1, "The calling process has already registered a MultiFingerGestureListener."

    .line 50
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    throw p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string/jumbo p1, "listener must not be null"

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public final registerMultiFingerTapBehavior(I)V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v0, Lcom/android/server/input/InputManagerService;->DEX_SETTINGS_URI:Landroid/net/Uri;

    .line 12
    .line 13
    const-string/jumbo v2, "touchpad_gestures_three_finger_tap"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v2, Lcom/android/server/input/InputManagerService$8;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    if-ne p1, v1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sget-object v0, Lcom/android/server/input/InputManagerService;->DEX_SETTINGS_URI:Landroid/net/Uri;

    .line 41
    .line 42
    const-string/jumbo v2, "touchpad_gestures_four_finger_tap"

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v2, Lcom/android/server/input/InputManagerService$8;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 52
    .line 53
    const/4 v4, 0x2

    .line 54
    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method public final registerPointerIconChangedListener(Landroid/hardware/input/IPointerIconChangedListener;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    new-instance v2, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;

    .line 19
    .line 20
    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IPointerIconChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IPointerIconChangedListener;->asBinder()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p1, "The calling process has already registered a PointerIconChangedListener."

    .line 50
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    throw p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string/jumbo p1, "listener must not be null"

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public final registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z
    .locals 5

    .line 1
    const-string v0, "The calling process "

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "InputManager"

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v3, "registerSensorListener: listener="

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, " callingPid="

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    const-string/jumbo v1, "listener must not be null"

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v1

    .line 48
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const/4 v4, 0x0

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    const-string p0, "InputManager"

    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, " has already registered an InputSensorEventListener."

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    monitor-exit v1

    .line 84
    return v4

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    .line 88
    .line 89
    invoke-direct {v0, p0, v2, p1}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputSensorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IInputSensorEventListener;->asBinder()Landroid/os/IBinder;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-interface {p1, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    .line 100
    .line 101
    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    monitor-exit v1

    .line 105
    const/4 p0, 0x1

    .line 106
    return p0

    .line 107
    :catch_0
    move-exception p0

    .line 108
    new-instance p1, Ljava/lang/RuntimeException;

    .line 109
    .line 110
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    throw p0
.end method

.method public final registerSetPenModeOnDexObserver()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/server/input/InputManagerService;->DEX_SETTINGS_URI:Landroid/net/Uri;

    .line 8
    .line 9
    const-string/jumbo v2, "spen_mode"

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lcom/android/server/input/InputManagerService$8;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;I)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final registerStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->registerStickyModifierStateListener_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mStickyModifierStateController:Lcom/android/server/input/StickyModifierStateController;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    new-instance v2, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;

    .line 25
    .line 26
    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;-><init>(Lcom/android/server/input/StickyModifierStateController;ILandroid/hardware/input/IStickyModifierStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IStickyModifierStateListener;->asBinder()Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    monitor-exit v1

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    new-instance p1, Ljava/lang/RuntimeException;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p1, "The calling process has already registered a StickyModifierStateListener."

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    throw p0
.end method

.method public final registerSwitchEventChangedListener(Landroid/hardware/input/ISwitchEventChangedListener;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedListeners:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    new-instance v2, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;

    .line 19
    .line 20
    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ISwitchEventChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/ISwitchEventChangedListener;->asBinder()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedListeners:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p1, "The calling process has already registered a SwitchEventChangedListener."

    .line 50
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    throw p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string/jumbo p1, "listener must not be null"

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public final registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    .locals 4

    .line 1
    const-string v0, "android.permission.TABLET_MODE"

    .line 2
    .line 3
    const-string/jumbo v1, "registerTabletModeChangedListener()"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string/jumbo v0, "event must not be null"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    new-instance v3, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    .line 35
    .line 36
    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/ITabletModeChangedListener;->asBinder()Landroid/os/IBinder;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {p0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    new-instance p1, Ljava/lang/RuntimeException;

    .line 57
    .line 58
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string p1, "The calling process has already registered a TabletModeChangedListener."

    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw p0

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 73
    .line 74
    const-string p1, "Requires TABLET_MODE_LISTENER permission"

    .line 75
    .line 76
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0
.end method

.method public final registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 5

    .line 1
    const-string v0, "Could not register vibrator state listener "

    .line 2
    .line 3
    const-string/jumbo v1, "listener must not be null"

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    new-instance v2, Landroid/os/RemoteCallbackList;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 40
    .line 41
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :try_start_1
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    const-string p0, "InputManager"

    .line 52
    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    .line 67
    .line 68
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    const/4 p0, 0x0

    .line 73
    return p0

    .line 74
    :catchall_1
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->notifyVibratorStateListenerLocked(ILandroid/os/IVibratorStateListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    .line 78
    .line 79
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    monitor-exit v1

    .line 83
    const/4 p0, 0x1

    .line 84
    return p0

    .line 85
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    throw p0
.end method

.method public final registerWirelessKeyboardShareChangedListener(Landroid/hardware/input/IWirelessKeyboardShareChangedListener;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/16 v2, 0x3e8

    .line 12
    .line 13
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    new-instance v2, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;

    .line 37
    .line 38
    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IWirelessKeyboardShareChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IWirelessKeyboardShareChangedListener;->asBinder()Landroid/os/IBinder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/RuntimeException;

    .line 60
    .line 61
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string p1, "The calling process has already registered a WirelessKeyboardShareChangedListener."

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    throw p0

    .line 75
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string/jumbo p1, "listener must not be null"

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 85
    .line 86
    const-string/jumbo p1, "only system signature can use registerWirelessKeyboardShareChangedListener(), but UID("

    .line 87
    .line 88
    .line 89
    const-string v1, ") has not system signature"

    .line 90
    .line 91
    invoke-static {v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

.method public final reloadDeviceAliases()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "InputManager"

    .line 6
    .line 7
    const-string v1, "Reloading device names."

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 13
    .line 14
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadDeviceAliases()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final reloadPointerIcons()V
    .locals 0

    .line 1
    return-void
.end method

.method public final remapModifierKey(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->remapModifierKey_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyRemapper:Lcom/android/server/input/KeyRemapper;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const-string/jumbo v1, "settings_new_keyboard_modifier_key"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    .line 29
    .line 30
    :goto_0
    const/16 p0, 0x6f

    .line 31
    .line 32
    if-ne p1, p0, :cond_1

    .line 33
    .line 34
    const-string/jumbo p0, "persist.service.esc.dialog"

    .line 35
    .line 36
    .line 37
    const-string p1, "1"

    .line 38
    .line 39
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final removeAllDeviceToGamepadProfile()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string/jumbo v0, "removeAllDeviceToGamepadProfile"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const-string v0, "InputManager"

    .line 17
    .line 18
    const-string/jumbo v1, "removeAllDeviceToGamepadProfile"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfileLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfile:Ljava/util/Map;

    .line 30
    .line 31
    check-cast p0, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 34
    .line 35
    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    const-string p0, "InputManager-GamePadRemapper"

    .line 38
    .line 39
    const-string/jumbo v0, "removeAllDeviceToGamepadProfile "

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p0
.end method

.method public final removeAllGamepadProfiles()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string/jumbo v0, "removeAllGamepadProfiles"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const-string v0, "InputManager"

    .line 17
    .line 18
    const-string/jumbo v1, "removeAllGamepadProfiles"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->clearStateGamePadProfiles()V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Lcom/android/server/input/PersistentDataStore;->mDirtyGamePadProfiles:Z

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeededGamePadProfiles()V

    .line 38
    .line 39
    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    const-string p0, "InputManager-GamePadRemapper"

    .line 42
    .line 43
    const-string/jumbo v0, "removeAllGamepadProfiles "

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p0
.end method

.method public final removeDeviceToGamepadProfile(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string/jumbo v0, "removeDeviceToGamepadProfile"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const-string v0, "InputManager"

    .line 17
    .line 18
    const-string/jumbo v1, "removeDeviceToGamepadProfile :"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, p1, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const-string p0, "InputManager-GamePadRemapper"

    .line 32
    .line 33
    const-string/jumbo p1, "removeDeviceToGamepadProfile : bt addr is null"

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfileLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v0

    .line 43
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfile:Ljava/util/Map;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast p0, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    const-string p0, "InputManager-GamePadRemapper"

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string/jumbo v1, "removeDeviceToGamepadProfile : "

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw p0
.end method

.method public final removeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/16 v3, 0x3e8

    .line 23
    .line 24
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const-string p0, "InputManager"

    .line 31
    .line 32
    const-string/jumbo p1, "removeDeviceWirelessKeyboardShare : called by not allowed app"

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 43
    .line 44
    .line 45
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :try_start_1
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 47
    .line 48
    invoke-virtual {v3, p2, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->removeHIDDevice(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    invoke-interface {p0, p2}, Lcom/android/server/input/NativeInputManagerService;->enableWirelessKeyboardShare(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    .line 56
    .line 57
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    const-string p0, "InputManager"

    .line 68
    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string/jumbo v0, "removeDeviceWirelessKeyboardShare : "

    .line 72
    .line 73
    .line 74
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    if-nez p1, :cond_2

    .line 78
    .line 79
    const/4 p1, 0x0

    .line 80
    :cond_2
    invoke-static {p2, p1, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    throw p0
.end method

.method public final removeGamepadProfile(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string/jumbo v0, "removeGamepadProfile"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const-string v0, "InputManager"

    .line 17
    .line 18
    const-string/jumbo v1, "removeGamepadProfile"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v1, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->clearData()V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lcom/android/server/input/PersistentDataStore;->mDirtyGamePadProfiles:Z

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeededGamePadProfiles()V

    .line 52
    .line 53
    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    const-string p0, "InputManager-GamePadRemapper"

    .line 56
    .line 57
    const-string/jumbo v0, "removeGamepadProfile : "

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v0, p0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    throw p0
.end method

.method public final removeInputChannel(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "connectionToken must not be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final removeKeyboardLayoutAssociation(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutAssociations:Ljava/util/Map;

    .line 8
    .line 9
    check-cast v1, Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 16
    .line 17
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeKeyboardLayoutAssociation()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p0
.end method

.method public final removePortAssociation(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    .line 2
    .line 3
    const-string/jumbo v1, "removePortAssociation()"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    .line 20
    .line 21
    check-cast v1, Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 28
    .line 29
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->notifyPortAssociationsChanged()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p0

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 37
    .line 38
    const-string p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final removeSpyWindowGestureMonitor(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    .line 5
    .line 6
    check-cast v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/server/input/GestureMonitorSpyWindow;

    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 16
    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    .line 22
    .line 23
    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object p1, v1, Lcom/android/server/input/GestureMonitorSpyWindow;->mInputSurface:Landroid/view/SurfaceControl;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 29
    .line 30
    .line 31
    iget-object p1, v1, Lcom/android/server/input/GestureMonitorSpyWindow;->mInputSurface:Landroid/view/SurfaceControl;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 37
    .line 38
    .line 39
    iget-object p0, v1, Lcom/android/server/input/GestureMonitorSpyWindow;->mClientChannel:Landroid/view/InputChannel;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p0
.end method

.method public final removeUniqueIdAssociationByDescriptor(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    .line 2
    .line 3
    const-string/jumbo v1, "removeUniqueIdAssociationByDescriptor()"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

    .line 20
    .line 21
    check-cast v1, Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 28
    .line 29
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeUniqueIdAssociation()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p0

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 37
    .line 38
    const-string p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final removeUniqueIdAssociationByPort(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    .line 2
    .line 3
    const-string/jumbo v1, "removeUniqueIdAssociation()"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByPort:Ljava/util/Map;

    .line 20
    .line 21
    check-cast v1, Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 28
    .line 29
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeUniqueIdAssociation()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p0

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 37
    .line 38
    const-string p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final requestPointerCapture(Landroid/os/IBinder;Z)V
    .locals 1

    .line 1
    const-string/jumbo v0, "event must not be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 8
    .line 9
    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->requestPointerCapture(Landroid/os/IBinder;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final semGetMotionIdleTimeMillis(Z)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getMotionIdleTimeMillis(Z)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final sendKeyboardWirelessKeyboardShare(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->notifyKeyboardAciton(II)V

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget p1, p0, Lcom/android/server/input/InputManagerService;->mSharedKeyReferenceCount:I

    .line 14
    .line 15
    add-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mSharedKeyReferenceCount:I

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 20
    .line 21
    new-instance p2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {p2, v1, p0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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
    iget p1, p0, Lcom/android/server/input/InputManagerService;->mSharedKeyReferenceCount:I

    .line 34
    .line 35
    if-lez p1, :cond_1

    .line 36
    .line 37
    add-int/lit8 p1, p1, -0x1

    .line 38
    .line 39
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mSharedKeyReferenceCount:I

    .line 40
    .line 41
    :cond_1
    iget p1, p0, Lcom/android/server/input/InputManagerService;->mSharedKeyReferenceCount:I

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 46
    .line 47
    new-instance p2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    invoke-direct {p2, v1, p0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    monitor-exit v0

    .line 57
    const/4 p0, 0x0

    .line 58
    return p0

    .line 59
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method public final sendMultiFingerGesture(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 2
    .line 3
    const/16 v0, 0x69

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final sendPogoKeyboardStatus(Z)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string/jumbo v1, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "status"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const/high16 v1, 0x1000000

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 26
    .line 27
    check-cast v0, Lcom/android/server/wm/InputManagerCallback;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 32
    .line 33
    const/16 v2, 0xc8

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->setPogoConnected(Z)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateWacomMode()V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 72
    .line 73
    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    if-ne p1, v1, :cond_1

    .line 77
    .line 78
    move v3, v1

    .line 79
    :cond_1
    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 80
    .line 81
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 84
    .line 85
    const/16 p1, 0x6b

    .line 86
    .line 87
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p0
.end method

.method public final sendPointerIconChanged(ILandroid/view/PointerIcon;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mLastPointerIconType:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLastPointerIcon:Landroid/view/PointerIcon;

    .line 6
    .line 7
    if-eq v0, p2, :cond_2

    .line 8
    .line 9
    :cond_0
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mLastPointerIconType:I

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mLastPointerIcon:Landroid/view/PointerIcon;

    .line 12
    .line 13
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "PointerIcon type changed: "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mLastPointerIconType:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "InputManager"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "PointerIcon changed: "

    .line 41
    .line 42
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mLastPointerIcon:Landroid/view/PointerIcon;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 58
    .line 59
    const/16 v0, 0x68

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void
.end method

.method public final sendSwitchWirelessKeyboardShare(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-ne p1, v2, :cond_0

    .line 10
    .line 11
    move p1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->switchRemoteDeviceByKey(Z)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const-string v1, "InputManager"

    .line 19
    .line 20
    const-string/jumbo v3, "switch device by key"

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_3

    .line 29
    :cond_1
    move p1, v2

    .line 30
    :goto_1
    if-ne p1, v2, :cond_2

    .line 31
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    long-to-int v5, v3

    .line 41
    iput v5, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 42
    .line 43
    const/16 v5, 0x20

    .line 44
    .line 45
    shr-long/2addr v3, v5

    .line 46
    long-to-int v3, v3

    .line 47
    iput v3, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 48
    .line 49
    const/4 v3, 0x6

    .line 50
    iput v3, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 51
    .line 52
    const-string v3, "android.policy:WirelessKeyboardShare"

    .line 53
    .line 54
    iput-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 57
    .line 58
    const/16 v3, 0x6a

    .line 59
    .line 60
    invoke-virtual {p0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 65
    .line 66
    .line 67
    :cond_2
    if-ne p1, v2, :cond_3

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    const/4 v2, 0x2

    .line 71
    :goto_2
    monitor-exit v0

    .line 72
    return v2

    .line 73
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
.end method

.method public final sendTouchPadGestureWirelessKeyboardShare(IFFI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->notifyMouseAciton(IFFI)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final setAccessibilityBounceKeysThreshold(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setAccessibilityBounceKeysThreshold(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setAccessibilitySlowKeysThreshold(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setAccessibilitySlowKeysThreshold(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setAccessibilityStickyKeysEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setAccessibilityStickyKeysEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final declared-synchronized setBlockDeviceMode(ZIZLjava/lang/String;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "sBDM(): isSet="

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    if-eqz p4, :cond_7

    .line 6
    .line 7
    :try_start_0
    const-string v1, ""

    .line 8
    .line 9
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    and-int/lit8 v1, p2, 0x1

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    .line 24
    .line 25
    invoke-virtual {v1, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    .line 32
    .line 33
    invoke-virtual {v1, p4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    .line 41
    .line 42
    invoke-virtual {v1, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    .line 49
    .line 50
    invoke-virtual {v1, p4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    and-int/lit8 v1, p2, 0x2

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    .line 60
    .line 61
    invoke-virtual {v1, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_4

    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    .line 68
    .line 69
    invoke-virtual {v1, p4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    .line 74
    .line 75
    invoke-virtual {v1, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    .line 82
    .line 83
    invoke-virtual {v1, p4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_4
    :goto_1
    const/4 v1, 0x0

    .line 87
    iput v1, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const/4 v2, 0x1

    .line 96
    if-lez v1, :cond_5

    .line 97
    .line 98
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    .line 99
    .line 100
    or-int/2addr v1, v2

    .line 101
    iput v1, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    .line 102
    .line 103
    :cond_5
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-lez v1, :cond_6

    .line 110
    .line 111
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    .line 112
    .line 113
    or-int/lit8 v1, v1, 0x2

    .line 114
    .line 115
    iput v1, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    .line 116
    .line 117
    :cond_6
    const-string v1, "InputManager"

    .line 118
    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string p1, " deviceType="

    .line 128
    .line 129
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p1, " isForce="

    .line 136
    .line 137
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p1, " caller="

    .line 144
    .line 145
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string p1, " blockMode="

    .line 152
    .line 153
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget p1, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    .line 157
    .line 158
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 169
    .line 170
    iget p2, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    .line 171
    .line 172
    invoke-interface {p1, v2, p2}, Lcom/android/server/input/NativeInputManagerService;->setInputMetaData(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .line 174
    .line 175
    monitor-exit p0

    .line 176
    return-void

    .line 177
    :cond_7
    :goto_2
    :try_start_1
    const-string p1, "InputManager"

    .line 178
    .line 179
    const-string/jumbo p2, "sBDM(): caller must be specified!"

    .line 180
    .line 181
    .line 182
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .line 184
    .line 185
    monitor-exit p0

    .line 186
    return-void

    .line 187
    :goto_3
    monitor-exit p0

    .line 188
    throw p1
.end method

.method public final setCoverVerify(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setCoverVerify = "

    .line 2
    .line 3
    .line 4
    const-string v1, "InputManager"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setCoverVerify(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setCustomPointerIcons(IF)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/PointerIconCache;IF)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setDefaultPointerIcon(ILandroid/view/PointerIcon;Z)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setForcedDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public final setDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    .line 7
    .line 8
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIconChanged:Z

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    .line 20
    .line 21
    iget p1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    .line 22
    .line 23
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    .line 31
    .line 32
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public final setDesktopModeServiceCallbacks(Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setDexImePolicy(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setDisplayDpi()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->SEP_FULL:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string/jumbo v2, "window"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/view/WindowManager;

    .line 20
    .line 21
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 29
    .line 30
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 31
    .line 32
    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 33
    .line 34
    invoke-interface {p0, v1, v0}, Lcom/android/server/input/NativeInputManagerService;->setDisplayDpi(FF)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final setDisplayEligibilityForPointerCapture(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setDisplayEligibilityForPointerCapture(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setDisplayIdForPointerIcon(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/view/PointerIcon;->clearSystemIcons()V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final setDisplayViewportsInternal(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->setDisplayDpi()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-array v0, v0, [Landroid/hardware/display/DisplayViewport;

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    :goto_0
    if-ltz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/hardware/display/DisplayViewport;

    .line 23
    .line 24
    aput-object v2, v0, v1

    .line 25
    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 30
    .line 31
    invoke-interface {p1, v0}, Lcom/android/server/input/NativeInputManagerService;->setDisplayViewports([Landroid/hardware/display/DisplayViewport;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 37
    .line 38
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/wm/InputManagerCallback;->getPointerDisplayId()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setPointerDisplayId(I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final setFocusedApplication(ILandroid/view/InputApplicationHandle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setFocusedApplication(ILandroid/view/InputApplicationHandle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setFocusedDisplay(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setFocusedDisplay(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setForcedDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    .line 10
    .line 11
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v3

    .line 18
    :goto_0
    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    iput-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIconChanged:Z

    .line 23
    .line 24
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIconChanged:Z

    .line 28
    .line 29
    iput v3, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    .line 30
    .line 31
    :goto_1
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public final setGamepadProfileName(ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

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
    const-string/jumbo v0, "setGamepadProfileName"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/android/server/input/GamePadRemapper;->isValidId(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v1, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;

    .line 46
    .line 47
    iput-object p2, v1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mName:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    iput-boolean v2, v1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mUsed:Z

    .line 51
    .line 52
    iput-boolean v2, p0, Lcom/android/server/input/PersistentDataStore;->mDirtyGamePadProfiles:Z

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeededGamePadProfiles()V

    .line 55
    .line 56
    .line 57
    monitor-exit v0

    .line 58
    move v1, v2

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0

    .line 63
    :cond_2
    :goto_0
    const-string p0, "InputManager-GamePadRemapper"

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string/jumbo v2, "setGamepadProfileName : "

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, " "

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, " "

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    const-string p0, "InputManager"

    .line 100
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string/jumbo v2, "setGamepadProfileName "

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v2, " : "

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p1, " "

    .line 121
    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    return v1
.end method

.method public final setHostRoleWirelessKeyboardShare()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/16 v3, 0x3e8

    .line 23
    .line 24
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const-string p0, "InputManager"

    .line 31
    .line 32
    const-string/jumbo v1, "setHostRoleWirelessKeyboardShare : called by not allowed app"

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->setHostRoleWirelessKeyboardShare()V

    .line 45
    .line 46
    .line 47
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const-string p0, "InputManager"

    .line 49
    .line 50
    const-string/jumbo v0, "setHostRoleWirelessKeyboardShare"

    .line 51
    .line 52
    .line 53
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    throw p0
.end method

.method public final setInTouchMode(ZIIZI)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-interface/range {v0 .. v5}, Lcom/android/server/input/NativeInputManagerService;->setInTouchMode(ZIIZI)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final setInputDispatchMode(ZZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setInputDispatchMode(ZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setInputFilter(Landroid/view/IInputFilter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 5
    .line 6
    if-ne v1, p1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    .line 19
    .line 20
    iput-boolean v2, v4, Lcom/android/server/input/InputManagerService$InputFilterHost;->mDisconnected:Z

    .line 21
    .line 22
    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    :try_start_1
    invoke-interface {v1}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    :catch_0
    :cond_1
    if-eqz p1, :cond_2

    .line 28
    .line 29
    :try_start_2
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 30
    .line 31
    new-instance v1, Lcom/android/server/input/InputManagerService$InputFilterHost;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    :try_start_3
    invoke-interface {p1, v1}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    .line 40
    .line 41
    :catch_1
    :cond_2
    :try_start_4
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const/4 v2, 0x0

    .line 47
    :goto_0
    invoke-interface {p0, v2}, Lcom/android/server/input/NativeInputManagerService;->setInputFilterEnabled(Z)V

    .line 48
    .line 49
    .line 50
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 53
    throw p0
.end method

.method public final setInputMethodManagerCallbacks(Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManagerCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

    .line 2
    .line 3
    return-void
.end method

.method public final setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->setKeyboardLayoutForInputDevice_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "setKeyboardLayoutForInputDevice() "

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    .line 13
    .line 14
    .line 15
    invoke-static {p5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/InputDevice;->isVirtual()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_0
    new-instance v2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    .line 39
    .line 40
    invoke-direct {v2, v1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/view/InputDevice;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    .line 44
    .line 45
    invoke-direct {v1, p2, p3, p4}, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;-><init>(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 46
    .line 47
    .line 48
    iget-object p3, v1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 49
    .line 50
    const-string/jumbo p4, "subtypeHandle must not be null"

    .line 51
    .line 52
    .line 53
    invoke-static {p3, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    new-instance p3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string/jumbo p4, "layoutDescriptor:"

    .line 59
    .line 60
    .line 61
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p4, ",userId:"

    .line 68
    .line 69
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p2, ",subtypeHandle:"

    .line 76
    .line 77
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object p2, v1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->toStringHandle()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    iget-object p3, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 94
    .line 95
    monitor-enter p3

    .line 96
    :try_start_0
    iget-object p4, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p4, v1}, Lcom/android/server/input/PersistentDataStore;->getOrCreateInputDeviceState(Ljava/lang/String;)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iget-object v1, v1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    .line 107
    .line 108
    check-cast v1, Landroid/util/ArrayMap;

    .line 109
    .line 110
    invoke-virtual {v1, p2, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v1, p5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const/4 v2, 0x1

    .line 119
    xor-int/2addr v1, v2

    .line 120
    if-eqz v1, :cond_1

    .line 121
    .line 122
    iput-boolean v2, p4, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    .line 123
    .line 124
    const-string p4, "KeyboardLayoutManager"

    .line 125
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string p1, " key: "

    .line 135
    .line 136
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string p1, " keyboardLayoutDescriptor: "

    .line 143
    .line 144
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {p4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    .line 158
    .line 159
    const/4 p2, 0x2

    .line 160
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :catchall_0
    move-exception p1

    .line 165
    goto :goto_1

    .line 166
    :cond_1
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 169
    .line 170
    .line 171
    monitor-exit p3

    .line 172
    goto :goto_3

    .line 173
    :catchall_1
    move-exception p0

    .line 174
    goto :goto_2

    .line 175
    :goto_1
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 178
    .line 179
    .line 180
    throw p1

    .line 181
    :goto_2
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    throw p0

    .line 183
    :cond_2
    :goto_3
    return-void
.end method

.method public final setLightStateInternal(ILandroid/hardware/lights/Light;Landroid/hardware/lights/LightState;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "light does not exist"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v1, "setLightStateInternal device "

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " light "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string/jumbo v1, "lightState "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "InputManager"

    .line 44
    .line 45
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getType()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/16 v1, 0x2712

    .line 53
    .line 54
    if-ne v0, v1, :cond_1

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getId()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-virtual {p3}, Landroid/hardware/lights/LightState;->getPlayerId()I

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->setLightPlayerId(III)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getId()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    invoke-virtual {p3}, Landroid/hardware/lights/LightState;->getColor()I

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->setLightColor(III)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method

.method public final setLightStates(I[I[Landroid/hardware/lights/LightState;Landroid/os/IBinder;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "setLightStates for "

    .line 2
    .line 3
    .line 4
    array-length v1, p2

    .line 5
    array-length v2, p3

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    move v1, v4

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, v3

    .line 13
    :goto_0
    const-string/jumbo v2, "lights and light states are not same length"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {v2, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p4

    .line 28
    check-cast p4, Lcom/android/server/input/InputManagerService$LightSession;

    .line 29
    .line 30
    if-eqz p4, :cond_1

    .line 31
    .line 32
    move v2, v4

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v2, v3

    .line 35
    :goto_1
    const-string/jumbo v5, "not registered"

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget v2, p4, Lcom/android/server/input/InputManagerService$LightSession;->mDeviceId:I

    .line 42
    .line 43
    if-ne v2, p1, :cond_2

    .line 44
    .line 45
    move v3, v4

    .line 46
    :cond_2
    const-string v2, "Incorrect device ID"

    .line 47
    .line 48
    invoke-static {v3, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, [I

    .line 56
    .line 57
    iput-object v2, p4, Lcom/android/server/input/InputManagerService$LightSession;->mLightIds:[I

    .line 58
    .line 59
    invoke-virtual {p3}, [Landroid/hardware/lights/LightState;->clone()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, [Landroid/hardware/lights/LightState;

    .line 64
    .line 65
    iput-object v2, p4, Lcom/android/server/input/InputManagerService$LightSession;->mLightStates:[Landroid/hardware/lights/LightState;

    .line 66
    .line 67
    sget-boolean v2, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 68
    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    const-string v2, "InputManager"

    .line 72
    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p4, p4, Lcom/android/server/input/InputManagerService$LightSession;->mOpPkg:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p4, " device "

    .line 84
    .line 85
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    invoke-static {v2, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_3

    .line 101
    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    throw p0
.end method

.method public final setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->getLights(I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-ge v3, v4, :cond_0

    .line 19
    .line 20
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Landroid/hardware/lights/Light;

    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/hardware/lights/Light;->getId()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Landroid/hardware/lights/Light;

    .line 35
    .line 36
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    :goto_1
    array-length v0, p2

    .line 43
    if-ge v2, v0, :cond_2

    .line 44
    .line 45
    aget v0, p2, v2

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    aget v0, p2, v2

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/hardware/lights/Light;

    .line 60
    .line 61
    aget-object v3, p3, v2

    .line 62
    .line 63
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/input/InputManagerService;->setLightStateInternal(ILandroid/hardware/lights/Light;Landroid/hardware/lights/LightState;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    return-void
.end method

.method public final setMousePointerAccelerationEnabled(ZI)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda1;-><init>(IZ)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2, v0}, Lcom/android/server/input/InputManagerService;->updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setPointerFillStyle(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/PointerIconCache;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 5
    .line 6
    move-object v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move-object v5, p5

    .line 11
    invoke-interface/range {v0 .. v5}, Lcom/android/server/input/NativeInputManagerService;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/PointerIcon;->getType()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-virtual {p0, p2, p1}, Lcom/android/server/input/InputManagerService;->sendPointerIconChanged(ILandroid/view/PointerIcon;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final setPointerIconVisible(ZI)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda1;-><init>(IZ)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2, v0}, Lcom/android/server/input/InputManagerService;->updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setPointerScale(F)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/PointerIconCache;F)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setPointerSpeedUnchecked(I)V
    .locals 1

    .line 1
    const/4 v0, -0x7

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    const/4 v0, 0x7

    .line 7
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setPointerSpeed(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setRemapGamepadButton(III)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

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
    const-string/jumbo v0, "setRemapGamepadButton"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/android/server/input/GamePadRemapper;->isValidId(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    move v0, v1

    .line 29
    :cond_2
    invoke-static {p2}, Lcom/android/server/input/GamePadRemapper;->isValidButton(I)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    move v0, v1

    .line 36
    :cond_3
    invoke-static {p3}, Lcom/android/server/input/GamePadRemapper;->isValidButton(I)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_4

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    move v1, v0

    .line 44
    :goto_0
    if-eqz v1, :cond_6

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 47
    .line 48
    monitor-enter v0

    .line 49
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v1, Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;

    .line 64
    .line 65
    iget-object v2, v1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpeButtonMap:Ljava/util/Map;

    .line 66
    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const/4 v3, 0x1

    .line 86
    if-ne v2, p3, :cond_5

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    iget-object v2, v1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpeButtonMap:Ljava/util/Map;

    .line 90
    .line 91
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v2, Landroid/util/ArrayMap;

    .line 100
    .line 101
    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    iput-boolean v3, v1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mUsed:Z

    .line 105
    .line 106
    iput-boolean v3, p0, Lcom/android/server/input/PersistentDataStore;->mDirtyGamePadProfiles:Z

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeededGamePadProfiles()V

    .line 109
    .line 110
    .line 111
    :goto_1
    monitor-exit v0

    .line 112
    move v1, v3

    .line 113
    goto :goto_2

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0

    .line 117
    :cond_6
    :goto_2
    const-string p0, "InputManager-GamePadRemapper"

    .line 118
    .line 119
    const-string/jumbo v0, "setRemapGamepadButton : "

    .line 120
    .line 121
    .line 122
    const-string v2, " "

    .line 123
    .line 124
    const-string v3, " "

    .line 125
    .line 126
    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v2, " "

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    const-string p0, "InputManager"

    .line 149
    .line 150
    const-string/jumbo v0, "setRemapGamepadButton "

    .line 151
    .line 152
    .line 153
    const-string v2, " : "

    .line 154
    .line 155
    const-string v3, " "

    .line 156
    .line 157
    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string p2, " "

    .line 165
    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    return v1
.end method

.method public final setRemapGamepadStick(IIIZZZ)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

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
    const-string/jumbo v0, "setRemapGamepadStick"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/android/server/input/GamePadRemapper;->isValidId(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    move v0, v1

    .line 29
    :cond_2
    const/16 v2, 0x80f

    .line 30
    .line 31
    const/16 v3, 0x80b

    .line 32
    .line 33
    const/16 v4, 0x800

    .line 34
    .line 35
    if-eq p2, v4, :cond_3

    .line 36
    .line 37
    if-eq p2, v3, :cond_3

    .line 38
    .line 39
    if-eq p2, v2, :cond_3

    .line 40
    .line 41
    move v0, v1

    .line 42
    :cond_3
    if-eq p3, v4, :cond_4

    .line 43
    .line 44
    if-eq p3, v3, :cond_4

    .line 45
    .line 46
    if-eq p3, v2, :cond_4

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    move v1, v0

    .line 50
    :goto_0
    if-eqz v1, :cond_5

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 53
    .line 54
    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 56
    .line 57
    move v2, p1

    .line 58
    move v3, p2

    .line 59
    move v4, p3

    .line 60
    move v5, p4

    .line 61
    move v6, p5

    .line 62
    move v7, p6

    .line 63
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/input/PersistentDataStore;->updateStickForGamePadProfiles(IIIZZZ)V

    .line 64
    .line 65
    .line 66
    monitor-exit v0

    .line 67
    const/4 v1, 0x1

    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0

    .line 72
    :cond_5
    :goto_1
    const-string p0, "InputManager-GamePadRemapper"

    .line 73
    .line 74
    const-string/jumbo v0, "setRemapGamepadStick : "

    .line 75
    .line 76
    .line 77
    const-string v2, " "

    .line 78
    .line 79
    const-string v3, " "

    .line 80
    .line 81
    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v2, " "

    .line 86
    .line 87
    const-string v3, " "

    .line 88
    .line 89
    invoke-static {p2, p3, v2, v3, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 90
    .line 91
    .line 92
    const-string v2, " "

    .line 93
    .line 94
    const-string v3, " "

    .line 95
    .line 96
    invoke-static {v0, p4, v2, p5, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    const-string p0, "InputManager"

    .line 110
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string/jumbo v2, "setRemapGamepadStick "

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v2, " : "

    .line 123
    .line 124
    const-string v3, " "

    .line 125
    .line 126
    invoke-static {p1, p2, v2, v3, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 127
    .line 128
    .line 129
    const-string p1, " "

    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string p1, " "

    .line 138
    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p1, " "

    .line 146
    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p1, " "

    .line 154
    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    return v1
.end method

.method public final setSecAccessoryManagerCallbacks(Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mSecAccessoryManagerCallbacks:Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;

    .line 2
    .line 3
    return-void
.end method

.method public final setSensorPrivacy(IZ)V
    .locals 1

    .line 1
    const-class p0, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 8
    .line 9
    const/4 v0, -0x2

    .line 10
    invoke-virtual {p0, v0, p1, p2}, Landroid/hardware/SensorPrivacyManagerInternal;->setPhysicalToggleSensorPrivacy(IIZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setShowAllTouches(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->showAllTouches(Z)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v0, "show all touches : "

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "InputManager"

    .line 22
    .line 23
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final setStartedShutdown(Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-interface {v0, v1, p1}, Lcom/android/server/input/NativeInputManagerService;->updateInputMetaState(IZ)V

    .line 14
    .line 15
    .line 16
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->IFW_KEY_COUNTER:Z

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->getKeyCountMap()Landroid/util/ArrayMap;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, ""

    .line 37
    .line 38
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/util/Map$Entry;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v1, ","

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string v0, "/"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    sget-boolean p0, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    .line 100
    .line 101
    if-eqz p0, :cond_1

    .line 102
    .line 103
    const-string/jumbo p0, "saveCount - concat data :"

    .line 104
    .line 105
    .line 106
    const-string v0, "InputKeyCounter"

    .line 107
    .line 108
    invoke-static {p0, p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_1
    const-string/jumbo p0, "persist.service.bgkeycount"

    .line 112
    .line 113
    .line 114
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    return-void
.end method

.method public final setSystemUiLightsOut(Z)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setSystemUiLightsOut(Z)V

    return-void
.end method

.method public final setSystemUiLightsOut(ZI)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .locals 3

    .line 1
    const-string v0, "android.permission.SET_INPUT_CALIBRATION"

    .line 2
    .line 3
    const-string/jumbo v1, "setTouchCalibrationForInputDevice()"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const-string/jumbo v0, "inputDeviceDescriptor must not be null"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "calibration must not be null"

    .line 20
    .line 21
    .line 22
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    if-ltz p2, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    if-gt p2, v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore;->getOrCreateInputDeviceState(Ljava/lang/String;)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    iget-object v2, p1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    .line 40
    .line 41
    aget-object v2, v2, p2

    .line 42
    .line 43
    invoke-virtual {p3, v2}, Landroid/hardware/input/TouchCalibration;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    iget-object p1, p1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    .line 50
    .line 51
    aput-object p3, p1, p2
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    :try_start_2
    iput-boolean p1, v1, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 57
    .line 58
    invoke-interface {p1}, Lcom/android/server/input/NativeInputManagerService;->reloadCalibration()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception p1

    .line 65
    const-string p2, "InputManager"

    .line 66
    .line 67
    const-string p3, "Cannot set touch calibration."

    .line 68
    .line 69
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    .line 71
    .line 72
    :cond_0
    :goto_0
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 75
    .line 76
    .line 77
    monitor-exit v0

    .line 78
    return-void

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    goto :goto_2

    .line 81
    :goto_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    throw p0

    .line 89
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    const-string/jumbo p1, "surfaceRotation value out of bounds"

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 99
    .line 100
    const-string p1, "Requires SET_INPUT_CALIBRATION permission"

    .line 101
    .line 102
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0
.end method

.method public final setTspEnabled(IZ)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "InputManager"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string/jumbo p0, "setTspEnabled: system not ready"

    .line 9
    .line 10
    .line 11
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/16 v4, 0x3e8

    .line 26
    .line 27
    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_5

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const-string v0, "SemInputDeviceManagerService"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 42
    .line 43
    sget-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->SPAY:Landroid/hardware/input/InputManager$SemTspCommandType;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpayEnable(I)I

    .line 52
    .line 53
    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    const-string/jumbo p0, "true"

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-string/jumbo p0, "false"

    .line 61
    .line 62
    .line 63
    :goto_0
    const-string/jumbo p1, "persist.service.tspcmd.spay"

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    sget-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->STYLUS:Landroid/hardware/input/InputManager$SemTspCommandType;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-ne p1, v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setStylusEnable(I)I

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    sget-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->BRUSH:Landroid/hardware/input/InputManager$SemTspCommandType;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-ne p1, v0, :cond_4

    .line 89
    .line 90
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setBrushEnable(I)I

    .line 91
    .line 92
    .line 93
    :goto_1
    const/4 p0, 0x1

    .line 94
    return p0

    .line 95
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string/jumbo v0, "setEnableTSP cmdtype: "

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p1, " enable: "

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    return v1

    .line 122
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 123
    .line 124
    const-string/jumbo p1, "only system signature can use setEnableTSP(), but UID("

    .line 125
    .line 126
    .line 127
    const-string p2, ") has not system signature"

    .line 128
    .line 129
    invoke-static {v0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0
.end method

.method public final setTypeAssociationInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDeviceTypeAssociations:Ljava/util/Map;

    .line 11
    .line 12
    check-cast v1, Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 19
    .line 20
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeTypeAssociation()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method

.method public final setUseLargePointerIcons(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda3;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/PointerIconCache;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final declared-synchronized setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/ControlWakeKey;

    .line 3
    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/ControlWakeKey;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public final setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->unregisterLidSwitchCallbackInternal(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->registerLidSwitchCallbackInternal(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 2
    .line 3
    return-void
.end method

.method public final showingTouchSensitivityNotificationIfNeeded()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->getTouchSensitivity()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "showingTouchSensitivityNotificationIfNeeded, mAutoAdjustTouch="

    .line 6
    .line 7
    .line 8
    const-string v2, " count="

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mShowingTouchSensitivityNotiCount:I

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, " old count="

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mShowingTouchSensitivityNotiCountOld:I

    .line 25
    .line 26
    const-string v3, "InputManager"

    .line 27
    .line 28
    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const-string p0, "Notification manager is null"

    .line 39
    .line 40
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mShowingTouchSensitivityNotiCountOld:I

    .line 45
    .line 46
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mShowingTouchSensitivityNotiCount:I

    .line 47
    .line 48
    if-ne v0, v1, :cond_3

    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    if-lt v0, v1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    const v1, 0x1040e6b

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    const v2, 0x1040e6a

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v3, Landroid/app/NotificationChannel;

    .line 73
    .line 74
    const/4 v4, 0x3

    .line 75
    const-string v5, "TouchSensitivityNoti"

    .line 76
    .line 77
    invoke-direct {v3, v5, v0, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 78
    .line 79
    .line 80
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 81
    .line 82
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 83
    .line 84
    .line 85
    new-instance v3, Landroid/app/Notification$Builder;

    .line 86
    .line 87
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const v4, 0x10805bf

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    .line 108
    .line 109
    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->createPendingIntent()Landroid/app/PendingIntent;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const/4 v1, 0x1

    .line 129
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    new-array v1, v1, [Landroid/app/Notification$Action;

    .line 138
    .line 139
    const/4 v3, 0x0

    .line 140
    invoke-virtual {p0, v2}, Lcom/android/server/input/InputManagerService;->buildTurnOnAction(I)Landroid/app/Notification$Action;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    aput-object v4, v1, v3

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->increaseTouchSensitivityNotiCount()V

    .line 160
    .line 161
    .line 162
    :cond_3
    :goto_0
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    const-string v0, "InputManager"

    .line 2
    .line 3
    const-string v1, "Starting input manager"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->start()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final startDragAndDrop(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-interface {p0, p1, p2, v0}, Lcom/android/server/input/NativeInputManagerService;->transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final supportPogoDevice()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "InputManager"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v0, "supportPogoDevice: system not ready, , caller="

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ", pid="

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    const-string v0, "SemInputDeviceManagerService"

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 53
    .line 54
    const/16 v0, 0x1f

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getSupportDevice(I)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_1

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    :cond_1
    const-string/jumbo p0, "supportPogoDevice: "

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v2, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    return v1
.end method

.method public final switchDeviceWirelessKeyboardShare(Ljava/lang/String;I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/16 v3, 0x3e8

    .line 23
    .line 24
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const-string p0, "InputManager"

    .line 31
    .line 32
    const-string/jumbo p1, "switchDeviceWirelessKeyboardShare : called by not allowed app"

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 44
    .line 45
    invoke-virtual {p0, p2, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->switchDevice(ILjava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p0, 0x1

    .line 51
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    const-string p2, "InputManager"

    .line 53
    .line 54
    const-string/jumbo v0, "switchDeviceWirelessKeyboardShare : "

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return p0

    .line 61
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p0
.end method

.method public final switchWirelessKeyboardShare(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2
    .line 3
    xor-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->enableWirelessKeyboardShare(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final systemRunning()V
    .locals 12

    .line 1
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "InputManager"

    .line 6
    .line 7
    const-string v1, "System ready."

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string/jumbo v1, "notification"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/app/NotificationManager;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 24
    .line 25
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 34
    .line 35
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSettingsObserver:Lcom/android/server/input/InputSettingsObserver;

    .line 44
    .line 45
    iget-object v1, v0, Lcom/android/server/input/InputSettingsObserver;->mObservers:Ljava/util/Map;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const/4 v3, 0x1

    .line 60
    const/4 v4, -0x1

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Landroid/net/Uri;

    .line 68
    .line 69
    iget-object v5, v0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v5, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget-object v1, v0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    new-instance v2, Lcom/android/server/input/InputSettingsObserver$1;

    .line 82
    .line 83
    invoke-direct {v2, v0}, Lcom/android/server/input/InputSettingsObserver$1;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    .line 84
    .line 85
    .line 86
    new-instance v5, Landroid/content/IntentFilter;

    .line 87
    .line 88
    const-string v6, "android.intent.action.USER_SWITCHED"

    .line 89
    .line 90
    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v6, v0, Lcom/android/server/input/InputSettingsObserver;->mHandler:Landroid/os/Handler;

    .line 94
    .line 95
    const/4 v7, 0x0

    .line 96
    invoke-virtual {v1, v2, v5, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    iget-object v1, v0, Lcom/android/server/input/InputSettingsObserver;->mObservers:Ljava/util/Map;

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_2

    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Ljava/util/function/Consumer;

    .line 120
    .line 121
    const-string/jumbo v5, "just booted"

    .line 122
    .line 123
    .line 124
    invoke-interface {v2, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    invoke-static {}, Lcom/android/input/flags/Flags;->rateLimitUserActivityPokeInDispatcher()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_3

    .line 133
    .line 134
    iget-object v1, v0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const v2, 0x10e00e5

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    const-string v2, "Setting user activity interval (ms) of "

    .line 148
    .line 149
    const-string v5, "InputManager"

    .line 150
    .line 151
    invoke-static {v1, v2, v5}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, v0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 155
    .line 156
    int-to-long v1, v1

    .line 157
    invoke-interface {v0, v1, v2}, Lcom/android/server/input/NativeInputManagerService;->setMinTimeBetweenUserActivityPokes(J)V

    .line 158
    .line 159
    .line 160
    :cond_3
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    .line 161
    .line 162
    monitor-enter v0

    .line 163
    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 164
    .line 165
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 166
    .line 167
    const/16 v2, -0x100

    .line 168
    .line 169
    const/4 v5, 0x0

    .line 170
    invoke-interface {v1, v4, v2, v5}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    move v6, v5

    .line 175
    :goto_2
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    .line 176
    .line 177
    check-cast v8, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    if-ge v6, v8, :cond_5

    .line 184
    .line 185
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    .line 186
    .line 187
    check-cast v8, Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    check-cast v8, Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;

    .line 194
    .line 195
    if-nez v1, :cond_4

    .line 196
    .line 197
    move v9, v3

    .line 198
    goto :goto_3

    .line 199
    :cond_4
    move v9, v5

    .line 200
    :goto_3
    invoke-interface {v8, v9}, Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;->notifyLidSwitchChanged(Z)V

    .line 201
    .line 202
    .line 203
    add-int/lit8 v6, v6, 0x1

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :catchall_0
    move-exception p0

    .line 207
    goto/16 :goto_8

    .line 208
    .line 209
    :cond_5
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 210
    .line 211
    const/16 v6, 0x17

    .line 212
    .line 213
    invoke-interface {v1, v4, v2, v6}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 214
    .line 215
    .line 216
    move v1, v5

    .line 217
    :goto_4
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    .line 218
    .line 219
    check-cast v6, Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-ge v1, v6, :cond_6

    .line 226
    .line 227
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    .line 228
    .line 229
    check-cast v6, Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    check-cast v6, Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;

    .line 236
    .line 237
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    add-int/lit8 v1, v1, 0x1

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 245
    .line 246
    const/16 v1, 0xe

    .line 247
    .line 248
    invoke-interface {v0, v4, v2, v1}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-ne v0, v3, :cond_7

    .line 253
    .line 254
    invoke-virtual {p0, v3, v3}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    .line 255
    .line 256
    .line 257
    :cond_7
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 258
    .line 259
    const/16 v1, 0x9

    .line 260
    .line 261
    invoke-interface {v0, v4, v2, v1}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    const/4 v1, 0x2

    .line 266
    if-ne v0, v3, :cond_8

    .line 267
    .line 268
    invoke-virtual {p0, v1, v3}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    .line 269
    .line 270
    .line 271
    :cond_8
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 272
    .line 273
    const/16 v6, 0x1e

    .line 274
    .line 275
    invoke-interface {v0, v4, v2, v6}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-ne v0, v3, :cond_9

    .line 280
    .line 281
    iput-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mSpenCoverAttached:Z

    .line 282
    .line 283
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateWacomMode()V

    .line 284
    .line 285
    .line 286
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->getTouchSensitivityNotiCount()I

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    iput v0, p0, Lcom/android/server/input/InputManagerService;->mShowingTouchSensitivityNotiCount:I

    .line 291
    .line 292
    iput v0, p0, Lcom/android/server/input/InputManagerService;->mShowingTouchSensitivityNotiCountOld:I

    .line 293
    .line 294
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 295
    .line 296
    const/16 v6, 0x1d

    .line 297
    .line 298
    invoke-interface {v0, v4, v2, v6}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-ne v0, v3, :cond_a

    .line 303
    .line 304
    iput-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mPaperCoverNotificationPending:Z

    .line 305
    .line 306
    :cond_a
    new-instance v0, Landroid/content/IntentFilter;

    .line 307
    .line 308
    const-string v2, "android.bluetooth.device.action.ALIAS_CHANGED"

    .line 309
    .line 310
    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 314
    .line 315
    new-instance v4, Lcom/android/server/input/InputManagerService$4;

    .line 316
    .line 317
    const/4 v6, 0x0

    .line 318
    invoke-direct {v4, p0, v6}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;I)V

    .line 319
    .line 320
    .line 321
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 322
    .line 323
    invoke-virtual {v2, v4, v0, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 324
    .line 325
    .line 326
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 327
    .line 328
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 329
    .line 330
    .line 331
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 332
    .line 333
    if-eqz v0, :cond_b

    .line 334
    .line 335
    check-cast v0, Lcom/android/server/WiredAccessoryManager;

    .line 336
    .line 337
    iget-object v2, v0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 338
    .line 339
    monitor-enter v2

    .line 340
    :try_start_1
    iget-object v4, v0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 341
    .line 342
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 343
    .line 344
    .line 345
    iget-object v4, v0, Lcom/android/server/WiredAccessoryManager;->mHandler:Lcom/android/server/WiredAccessoryManager$2;

    .line 346
    .line 347
    invoke-virtual {v4, v1, v5, v5, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    iget-object v0, v0, Lcom/android/server/WiredAccessoryManager;->mHandler:Lcom/android/server/WiredAccessoryManager$2;

    .line 352
    .line 353
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 354
    .line 355
    .line 356
    monitor-exit v2

    .line 357
    goto :goto_5

    .line 358
    :catchall_1
    move-exception p0

    .line 359
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 360
    throw p0

    .line 361
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->checkInputFeature()I

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 366
    .line 367
    invoke-interface {v1, v0}, Lcom/android/server/input/NativeInputManagerService;->setTspFeatures(I)V

    .line 368
    .line 369
    .line 370
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mAddingPogoKeyboardIntentPending:Z

    .line 371
    .line 372
    if-eqz v0, :cond_c

    .line 373
    .line 374
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    .line 375
    .line 376
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->sendPogoKeyboardStatus(Z)V

    .line 377
    .line 378
    .line 379
    iput-boolean v5, p0, Lcom/android/server/input/InputManagerService;->mAddingPogoKeyboardIntentPending:Z

    .line 380
    .line 381
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->initTspCmdForSpay()V

    .line 382
    .line 383
    .line 384
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 385
    .line 386
    monitor-enter v1

    .line 387
    :try_start_2
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 388
    .line 389
    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore;->getNumLockState()Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 394
    .line 395
    const/16 v4, 0x20

    .line 396
    .line 397
    invoke-interface {v2, v4, v0}, Lcom/android/server/input/NativeInputManagerService;->updateInputMetaState(IZ)V

    .line 398
    .line 399
    .line 400
    const-string v2, "InputManager"

    .line 401
    .line 402
    new-instance v4, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .line 406
    .line 407
    const-string/jumbo v6, "readNumLock : "

    .line 408
    .line 409
    .line 410
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 424
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    .line 425
    .line 426
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 427
    .line 428
    .line 429
    new-instance v1, Landroid/content/IntentFilter;

    .line 430
    .line 431
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 432
    .line 433
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 437
    .line 438
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 442
    .line 443
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 447
    .line 448
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    const-string/jumbo v2, "package"

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    iget-object v2, v0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 458
    .line 459
    new-instance v4, Lcom/android/server/input/KeyboardLayoutManager$2;

    .line 460
    .line 461
    invoke-direct {v4, v0}, Lcom/android/server/input/KeyboardLayoutManager$2;-><init>(Lcom/android/server/input/KeyboardLayoutManager;)V

    .line 462
    .line 463
    .line 464
    iget-object v6, v0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    .line 465
    .line 466
    invoke-virtual {v2, v4, v1, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 467
    .line 468
    .line 469
    iget-object v1, v0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    .line 470
    .line 471
    const/4 v2, 0x3

    .line 472
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 473
    .line 474
    .line 475
    iget-object v1, v0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 476
    .line 477
    const-class v2, Landroid/hardware/input/InputManager;

    .line 478
    .line 479
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    check-cast v1, Landroid/hardware/input/InputManager;

    .line 484
    .line 485
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    iget-object v2, v0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    .line 489
    .line 490
    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 491
    .line 492
    .line 493
    iget-object v2, v0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    .line 494
    .line 495
    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    invoke-static {v2, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    iget-object v0, v0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    .line 504
    .line 505
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 506
    .line 507
    .line 508
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    .line 509
    .line 510
    iget-object v1, v0, Lcom/android/server/input/BatteryController;->mContext:Landroid/content/Context;

    .line 511
    .line 512
    const-class v2, Landroid/hardware/input/InputManager;

    .line 513
    .line 514
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    check-cast v1, Landroid/hardware/input/InputManager;

    .line 519
    .line 520
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    iget-object v2, v0, Lcom/android/server/input/BatteryController;->mInputDeviceListener:Lcom/android/server/input/BatteryController$1;

    .line 524
    .line 525
    iget-object v4, v0, Lcom/android/server/input/BatteryController;->mHandler:Landroid/os/Handler;

    .line 526
    .line 527
    invoke-virtual {v1, v2, v4}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    array-length v2, v1

    .line 535
    move v4, v5

    .line 536
    :goto_6
    if-ge v4, v2, :cond_d

    .line 537
    .line 538
    aget v6, v1, v4

    .line 539
    .line 540
    iget-object v7, v0, Lcom/android/server/input/BatteryController;->mInputDeviceListener:Lcom/android/server/input/BatteryController$1;

    .line 541
    .line 542
    invoke-virtual {v7, v6}, Lcom/android/server/input/BatteryController$1;->onInputDeviceAdded(I)V

    .line 543
    .line 544
    .line 545
    add-int/lit8 v4, v4, 0x1

    .line 546
    .line 547
    goto :goto_6

    .line 548
    :cond_d
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    .line 549
    .line 550
    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->systemRunning()V

    .line 551
    .line 552
    .line 553
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLedController:Lcom/android/server/input/KeyboardLedController;

    .line 554
    .line 555
    iget-object v1, v0, Lcom/android/server/input/KeyboardLedController;->mContext:Landroid/content/Context;

    .line 556
    .line 557
    const-class v2, Landroid/hardware/SensorPrivacyManager;

    .line 558
    .line 559
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    check-cast v1, Landroid/hardware/SensorPrivacyManager;

    .line 564
    .line 565
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    iput-object v1, v0, Lcom/android/server/input/KeyboardLedController;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 569
    .line 570
    iget-object v1, v0, Lcom/android/server/input/KeyboardLedController;->mContext:Landroid/content/Context;

    .line 571
    .line 572
    const-class v2, Landroid/hardware/input/InputManager;

    .line 573
    .line 574
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    check-cast v1, Landroid/hardware/input/InputManager;

    .line 579
    .line 580
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    iput-object v1, v0, Lcom/android/server/input/KeyboardLedController;->mInputManager:Landroid/hardware/input/InputManager;

    .line 584
    .line 585
    iget-object v1, v0, Lcom/android/server/input/KeyboardLedController;->mContext:Landroid/content/Context;

    .line 586
    .line 587
    const-class v2, Landroid/media/AudioManager;

    .line 588
    .line 589
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    check-cast v1, Landroid/media/AudioManager;

    .line 594
    .line 595
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    iput-object v1, v0, Lcom/android/server/input/KeyboardLedController;->mAudioManager:Landroid/media/AudioManager;

    .line 599
    .line 600
    iget-object v1, v0, Lcom/android/server/input/KeyboardLedController;->mInputManager:Landroid/hardware/input/InputManager;

    .line 601
    .line 602
    iget-object v2, v0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    .line 603
    .line 604
    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 605
    .line 606
    .line 607
    iget-object v1, v0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    .line 608
    .line 609
    iget-object v2, v0, Lcom/android/server/input/KeyboardLedController;->mInputManager:Landroid/hardware/input/InputManager;

    .line 610
    .line 611
    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    iget-object v2, v0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    .line 620
    .line 621
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 622
    .line 623
    .line 624
    iget-object v6, v0, Lcom/android/server/input/KeyboardLedController;->mContext:Landroid/content/Context;

    .line 625
    .line 626
    iget-object v7, v0, Lcom/android/server/input/KeyboardLedController;->mMicrophoneMuteChangedIntentReceiver:Lcom/android/server/input/KeyboardLedController$1;

    .line 627
    .line 628
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 629
    .line 630
    new-instance v9, Landroid/content/IntentFilter;

    .line 631
    .line 632
    const-string v1, "android.media.action.MICROPHONE_MUTE_CHANGED"

    .line 633
    .line 634
    invoke-direct {v9, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    iget-object v11, v0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    .line 638
    .line 639
    const/4 v10, 0x0

    .line 640
    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 641
    .line 642
    .line 643
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyRemapper:Lcom/android/server/input/KeyRemapper;

    .line 644
    .line 645
    iget-object v1, v0, Lcom/android/server/input/KeyRemapper;->mContext:Landroid/content/Context;

    .line 646
    .line 647
    const-class v2, Landroid/hardware/input/InputManager;

    .line 648
    .line 649
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    check-cast v1, Landroid/hardware/input/InputManager;

    .line 654
    .line 655
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    iget-object v2, v0, Lcom/android/server/input/KeyRemapper;->mHandler:Landroid/os/Handler;

    .line 659
    .line 660
    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 661
    .line 662
    .line 663
    iget-object v2, v0, Lcom/android/server/input/KeyRemapper;->mHandler:Landroid/os/Handler;

    .line 664
    .line 665
    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    invoke-static {v2, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    iget-object v0, v0, Lcom/android/server/input/KeyRemapper;->mHandler:Landroid/os/Handler;

    .line 674
    .line 675
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 676
    .line 677
    .line 678
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    .line 679
    .line 680
    iget-object v1, v0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    .line 681
    .line 682
    const-class v2, Landroid/hardware/display/DisplayManager;

    .line 683
    .line 684
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 689
    .line 690
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    iget-object v2, v0, Lcom/android/server/input/PointerIconCache;->mDisplayListener:Lcom/android/server/input/PointerIconCache$1;

    .line 694
    .line 695
    iget-object v3, v0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    .line 696
    .line 697
    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    :goto_7
    array-length v2, v1

    .line 705
    if-ge v5, v2, :cond_e

    .line 706
    .line 707
    iget-object v2, v0, Lcom/android/server/input/PointerIconCache;->mDisplayListener:Lcom/android/server/input/PointerIconCache$1;

    .line 708
    .line 709
    aget-object v3, v1, v5

    .line 710
    .line 711
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 712
    .line 713
    .line 714
    move-result v3

    .line 715
    invoke-virtual {v2, v3}, Lcom/android/server/input/PointerIconCache$1;->onDisplayAdded(I)V

    .line 716
    .line 717
    .line 718
    add-int/lit8 v5, v5, 0x1

    .line 719
    .line 720
    goto :goto_7

    .line 721
    :cond_e
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 722
    .line 723
    invoke-virtual {p0}, Lcom/android/server/input/GamePadRemapper;->systemRunning()V

    .line 724
    .line 725
    .line 726
    return-void

    .line 727
    :catchall_2
    move-exception p0

    .line 728
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 729
    throw p0

    .line 730
    :goto_8
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 731
    throw p0
.end method

.method public final transferTouch(Landroid/os/IBinder;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string/jumbo v0, "destChannelToken must not be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 8
    .line 9
    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->transferTouch(Landroid/os/IBinder;I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-interface {p0, p1, p2, v0}, Lcom/android/server/input/NativeInputManagerService;->transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final tryPointerSpeed(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "android.permission.SET_POINTER_SPEED"

    .line 3
    .line 4
    const-string/jumbo v2, "tryPointerSpeed()"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v0, -0x7

    .line 14
    if-lt p1, v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x7

    .line 17
    if-gt p1, v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string/jumbo p1, "speed out of range"

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 33
    .line 34
    const-string p1, "Requires SET_POINTER_SPEED permission"

    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final unregisterBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    .locals 7

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "Cannot unregister battery callback: The device is not being monitored for deviceId "

    .line 11
    .line 12
    const-string v2, "Cannot unregister battery callback: The listener is not the one that is registered for pid "

    .line 13
    .line 14
    const-string v3, "Cannot unregister battery callback: No listener registered for pid "

    .line 15
    .line 16
    iget-object v4, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v4

    .line 19
    :try_start_0
    iget-object v5, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lcom/android/server/input/BatteryController$ListenerRecord;

    .line 30
    .line 31
    if-eqz v5, :cond_2

    .line 32
    .line 33
    iget-object v3, v5, Lcom/android/server/input/BatteryController$ListenerRecord;->mListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    .line 34
    .line 35
    invoke-interface {v3}, Landroid/hardware/input/IInputDeviceBatteryListener;->asBinder()Landroid/os/IBinder;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {p2}, Landroid/hardware/input/IInputDeviceBatteryListener;->asBinder()Landroid/os/IBinder;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-ne v3, p2, :cond_1

    .line 44
    .line 45
    iget-object p2, v5, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast p2, Landroid/util/ArraySet;

    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0, v5, p1}, Lcom/android/server/input/BatteryController;->unregisterRecordLocked(Lcom/android/server/input/BatteryController$ListenerRecord;I)V

    .line 60
    .line 61
    .line 62
    monitor-exit v4

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    throw p0
.end method

.method public final unregisterKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->unregisterKeyboardBacklightListener_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-interface {p0, p1, v0}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->unregisterKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final unregisterLidSwitchCallbackInternal(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    .line 5
    .line 6
    check-cast p0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

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

.method public final unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "InputManager"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "unregisterSensorListener: listener="

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " callingPid="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    const-string/jumbo v0, "listener must not be null"

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v0

    .line 46
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    .line 65
    .line 66
    iget-object v2, v2, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mListener:Landroid/hardware/input/IInputSensorEventListener;

    .line 67
    .line 68
    invoke-interface {v2}, Landroid/hardware/input/IInputSensorEventListener;->asBinder()Landroid/os/IBinder;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {p1}, Landroid/hardware/input/IInputSensorEventListener;->asBinder()Landroid/os/IBinder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-ne v2, p1, :cond_1

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    const-string/jumbo p1, "listener is not registered"

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_2
    :goto_0
    monitor-exit v0

    .line 96
    return-void

    .line 97
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw p0
.end method

.method public final unregisterStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->unregisterStickyModifierStateListener_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mStickyModifierStateController:Lcom/android/server/input/StickyModifierStateController;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-object v3, v2, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mListener:Landroid/hardware/input/IStickyModifierStateListener;

    .line 27
    .line 28
    invoke-interface {v3}, Landroid/hardware/input/IStickyModifierStateListener;->asBinder()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {p1}, Landroid/hardware/input/IStickyModifierStateListener;->asBinder()Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-ne v3, p1, :cond_0

    .line 37
    .line 38
    iget-object p1, v2, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mListener:Landroid/hardware/input/IStickyModifierStateListener;

    .line 39
    .line 40
    invoke-interface {p1}, Landroid/hardware/input/IStickyModifierStateListener;->asBinder()Landroid/os/IBinder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 51
    .line 52
    .line 53
    monitor-exit v1

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string p1, "The calling process has a different registered StickyModifierStateListener."

    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string p1, "The calling process has no registered StickyModifierStateListener."

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
.end method

.method public final unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 5

    .line 1
    const-string v0, "Vibrator state listener "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    const-string p0, "InputManager"

    .line 19
    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, " doesn\'t exist"

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    const/4 p0, 0x0

    .line 45
    return p0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catchall_1
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Landroid/os/RemoteCallbackList;

    .line 57
    .line 58
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 59
    .line 60
    .line 61
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    monitor-exit v1

    .line 66
    return p0

    .line 67
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :goto_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    throw p0
.end method

.method public final unsetTypeAssociationInternal(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDeviceTypeAssociations:Ljava/util/Map;

    .line 8
    .line 9
    check-cast v1, Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 16
    .line 17
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeTypeAssociation()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p0
.end method

.method public final updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    iget-boolean v2, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    .line 28
    .line 29
    iget-boolean v3, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mousePointerAccelerationEnabled:Z

    .line 30
    .line 31
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-boolean p2, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    .line 35
    .line 36
    if-eq v2, p2, :cond_1

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 39
    .line 40
    invoke-interface {v2, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setPointerIconVisibility(IZ)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-boolean p2, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mousePointerAccelerationEnabled:Z

    .line 44
    .line 45
    if-eq v3, p2, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 48
    .line 49
    invoke-interface {v2, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setMousePointerAccelerationEnabled(IZ)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-boolean p2, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mousePointerAccelerationEnabled:Z

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    if-ne p2, v2, :cond_3

    .line 56
    .line 57
    iget-boolean p2, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    .line 58
    .line 59
    if-ne p2, v2, :cond_3

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 64
    .line 65
    .line 66
    :cond_3
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

.method public final updateDeviceToGamepadProfile(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string/jumbo v0, "updateDeviceToGamepadProfile"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const-string v0, "InputManager"

    .line 17
    .line 18
    const-string/jumbo v1, "updateDeviceToGamepadProfile :"

    .line 19
    .line 20
    .line 21
    const-string v2, " "

    .line 22
    .line 23
    invoke-static {p2, v1, p1, v2, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const-string p0, "InputManager-GamePadRemapper"

    .line 34
    .line 35
    const-string/jumbo p1, "removeDeviceToGamepadProfile : bt addr is null"

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {p2}, Lcom/android/server/input/GamePadRemapper;->isValidId(I)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfileLock:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter v0

    .line 54
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfile:Ljava/util/Map;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast p0, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    monitor-exit v0

    .line 70
    const/4 p0, 0x1

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0

    .line 75
    :cond_3
    const/4 p0, 0x0

    .line 76
    :goto_0
    const-string v0, "InputManager-GamePadRemapper"

    .line 77
    .line 78
    const-string/jumbo v1, "updateDeviceToGamepadProfile : "

    .line 79
    .line 80
    .line 81
    const-string v2, " "

    .line 82
    .line 83
    invoke-static {v1, v2, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, " "

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    :goto_1
    return-void
.end method

.method public final updateFlowPointerDirectionSettings()V
    .locals 10

    .line 1
    const-string v0, "InputManager"

    .line 2
    .line 3
    new-instance v1, Landroid/os/Bundle;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "key"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "flow_pointer_from_where_dex"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v3, "def"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v5, "left"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    :try_start_0
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    sget-object v7, Lcom/android/server/input/InputManagerService;->DEX_SETTINGS_URI:Landroid/net/Uri;

    .line 35
    .line 36
    const-string/jumbo v8, "getSettings"

    .line 37
    .line 38
    .line 39
    const/4 v9, 0x0

    .line 40
    invoke-virtual {v6, v7, v8, v9, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v6, ""

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    goto :goto_2

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    move v2, v3

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const-string/jumbo v1, "right"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    :cond_2
    :goto_1
    move v3, v2

    .line 74
    goto :goto_3

    .line 75
    :goto_2
    const-string v2, "Failed to get settings SETTINGS_KEY_POINTER_FLOW_DIRECTION"

    .line 76
    .line 77
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    :goto_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 81
    .line 82
    invoke-interface {p0, v3}, Lcom/android/server/input/NativeInputManagerService;->setFlowPointerDirection(I)V

    .line 83
    .line 84
    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string/jumbo v1, "updateFlowPointerDirectionSettings : "

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final updateFlowPointerSettings()V
    .locals 8

    .line 1
    const-string v0, "InputManager"

    .line 2
    .line 3
    new-instance v1, Landroid/os/Bundle;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v2, "key"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v3, "flow_pointer_is_on_dex"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v2, "def"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v4, "false"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    sget-object v5, Lcom/android/server/input/InputManagerService;->DEX_SETTINGS_URI:Landroid/net/Uri;

    .line 35
    .line 36
    const-string/jumbo v6, "getSettings"

    .line 37
    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string/jumbo v3, "true"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    const-string v3, "Failed to get settings SETTINGS_KEY_FLOW_POINTER_TO_PHONE_SCREEN"

    .line 63
    .line 64
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 68
    .line 69
    invoke-interface {p0, v2}, Lcom/android/server/input/NativeInputManagerService;->enableFlowPointer(Z)V

    .line 70
    .line 71
    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string/jumbo v1, "updateFlowPointerSettings : "

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final updateFocusEventDebugViewEnabled()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mShowKeyPresses:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mShowRotaryInput:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v0, v1

    .line 15
    :goto_1
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugViewLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v3

    .line 18
    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    .line 19
    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    move v5, v1

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move v5, v2

    .line 25
    :goto_2
    if-ne v0, v5, :cond_3

    .line 26
    .line 27
    monitor-exit v3

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_4

    .line 31
    :cond_3
    if-eqz v0, :cond_4

    .line 32
    .line 33
    new-instance v4, Lcom/android/server/input/debug/FocusEventDebugView;

    .line 34
    .line 35
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    new-instance v6, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda3;

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    invoke-direct {v6, v5, v7}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;I)V

    .line 41
    .line 42
    .line 43
    new-instance v7, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda3;

    .line 44
    .line 45
    const/4 v8, 0x1

    .line 46
    invoke-direct {v7, v5, v8}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;I)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v4, v5, p0, v6, v7}, Lcom/android/server/input/debug/FocusEventDebugView;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    .line 50
    .line 51
    .line 52
    iput-object v4, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    const/4 v5, 0x0

    .line 56
    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    .line 57
    .line 58
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    const-class v5, Landroid/view/WindowManager;

    .line 65
    .line 66
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Landroid/view/WindowManager;

    .line 71
    .line 72
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    check-cast v3, Landroid/view/WindowManager;

    .line 76
    .line 77
    if-nez v0, :cond_5

    .line 78
    .line 79
    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_5
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 84
    .line 85
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 86
    .line 87
    .line 88
    const/16 v5, 0x7df

    .line 89
    .line 90
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 91
    .line 92
    const/16 v5, 0x118

    .line 93
    .line 94
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 95
    .line 96
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 97
    .line 98
    or-int/lit8 v5, v5, 0x10

    .line 99
    .line 100
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 103
    .line 104
    .line 105
    const/4 v2, 0x3

    .line 106
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 107
    .line 108
    const/4 v2, -0x3

    .line 109
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 110
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v5, "FocusEventDebugView - display "

    .line 114
    .line 115
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 135
    .line 136
    or-int/2addr p0, v1

    .line 137
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 138
    .line 139
    invoke-interface {v3, v4, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    throw p0
.end method

.method public final updateMultiFingerTapBehavior(I)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mCurrentThreeTapBehavior:I

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mCurrentFourTapBehavior:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 p1, 0x0

    .line 14
    :goto_0
    const-string/jumbo p0, "updateMultiFingerTapBehavior : "

    .line 15
    .line 16
    .line 17
    const-string v0, "InputManager"

    .line 18
    .line 19
    invoke-static {p1, p0, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final updatePointerLocationEnabled(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    .line 8
    .line 9
    if-ne v1, p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 15
    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    iput-boolean p1, v1, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    .line 21
    .line 22
    iget-object p1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 23
    .line 24
    new-instance v1, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/InputManagerCallback;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayPolicies(Ljava/util/function/Consumer;)V

    .line 30
    .line 31
    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public final updateSetPenModeOnDex()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->getSetPenModeOnDex(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 7
    .line 8
    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->setPenModeOnDex(I)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v1, "updateSetPenModeOnDex : "

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v0, "InputManager"

    .line 27
    .line 28
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final updateShowKeyPresses(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mShowKeyPresses:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mShowKeyPresses:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateFocusEventDebugViewEnabled()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugViewLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/FocusEventDebugView;ZI)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final updateShowRotaryInput(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mShowRotaryInput:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mShowRotaryInput:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateFocusEventDebugViewEnabled()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugViewLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/FocusEventDebugView;ZI)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final updateWacomMode()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 2
    .line 3
    const-string v1, "InputManager"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "updateWacomMode: system not ready"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSpenCoverAttached:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 v0, 0x0

    .line 27
    :goto_0
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mLastWacomMode:I

    .line 28
    .line 29
    if-eq v0, v2, :cond_3

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const-string v3, "SemInputDeviceManagerService"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string/jumbo v4, "updateWacomMode: "

    .line 44
    .line 45
    .line 46
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget v4, p0, Lcom/android/server/input/InputManagerService;->mLastWacomMode:I

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v4, " -> "

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenCoverType(I)I

    .line 70
    .line 71
    .line 72
    iput v0, p0, Lcom/android/server/input/InputManagerService;->mLastWacomMode:I

    .line 73
    .line 74
    :cond_3
    return-void
.end method

.method public final updateWirelessKeyboardShareStatus()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->updateWirelessKeyboardShareStatus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    .line 20
    .line 21
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :catchall_1
    move-exception p0

    .line 28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_0
    :goto_0
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    throw p0
.end method

.method public final verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;
    .locals 1

    .line 1
    const-string/jumbo v0, "event must not be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/server/input/InputManagerService$VibrationInfo;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lcom/android/server/input/InputManagerService$VibrationInfo;-><init>(Landroid/os/VibrationEffect;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3}, Lcom/android/server/input/InputManagerService;->getVibratorToken(ILandroid/os/IBinder;)Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    monitor-enter p2

    .line 11
    const/4 p3, 0x1

    .line 12
    :try_start_0
    iput-boolean p3, p2, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 15
    .line 16
    iget-object v3, v0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mPattern:[J

    .line 17
    .line 18
    iget-object v4, v0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mAmplitudes:[I

    .line 19
    .line 20
    iget v5, v0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mRepeat:I

    .line 21
    .line 22
    iget v6, p2, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    .line 23
    .line 24
    move v2, p1

    .line 25
    invoke-interface/range {v1 .. v6}, Lcom/android/server/input/NativeInputManagerService;->vibrate(I[J[III)V

    .line 26
    .line 27
    .line 28
    monitor-exit p2

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final vibrateCombined(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/input/InputManagerService;->getVibratorToken(ILandroid/os/IBinder;)Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    monitor-enter p3

    .line 6
    :try_start_0
    instance-of v0, p2, Landroid/os/CombinedVibration$Mono;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    instance-of v0, p2, Landroid/os/CombinedVibration$Stereo;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string p0, "InputManager"

    .line 15
    .line 16
    const-string p1, "Only Mono and Stereo effects are supported"

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    monitor-exit p3

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p3, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 28
    .line 29
    instance-of v0, p2, Landroid/os/CombinedVibration$Mono;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    check-cast p2, Landroid/os/CombinedVibration$Mono;

    .line 34
    .line 35
    new-instance v0, Lcom/android/server/input/InputManagerService$VibrationInfo;

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-direct {v0, p2}, Lcom/android/server/input/InputManagerService$VibrationInfo;-><init>(Landroid/os/VibrationEffect;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 45
    .line 46
    iget-object v3, v0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mPattern:[J

    .line 47
    .line 48
    iget-object v4, v0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mAmplitudes:[I

    .line 49
    .line 50
    iget v5, v0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mRepeat:I

    .line 51
    .line 52
    iget v6, p3, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    .line 53
    .line 54
    move v2, p1

    .line 55
    invoke-interface/range {v1 .. v6}, Lcom/android/server/input/NativeInputManagerService;->vibrate(I[J[III)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    instance-of v0, p2, Landroid/os/CombinedVibration$Stereo;

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    check-cast p2, Landroid/os/CombinedVibration$Stereo;

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    const/4 v0, 0x0

    .line 70
    new-array v1, v0, [J

    .line 71
    .line 72
    new-instance v5, Landroid/util/SparseArray;

    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-direct {v5, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 79
    .line 80
    .line 81
    const/high16 v2, -0x80000000

    .line 82
    .line 83
    move-object v4, v1

    .line 84
    move v6, v2

    .line 85
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-ge v0, v1, :cond_4

    .line 90
    .line 91
    new-instance v1, Lcom/android/server/input/InputManagerService$VibrationInfo;

    .line 92
    .line 93
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Landroid/os/VibrationEffect;

    .line 98
    .line 99
    invoke-direct {v1, v3}, Lcom/android/server/input/InputManagerService$VibrationInfo;-><init>(Landroid/os/VibrationEffect;)V

    .line 100
    .line 101
    .line 102
    array-length v3, v4

    .line 103
    if-nez v3, :cond_2

    .line 104
    .line 105
    iget-object v3, v1, Lcom/android/server/input/InputManagerService$VibrationInfo;->mPattern:[J

    .line 106
    .line 107
    move-object v4, v3

    .line 108
    :cond_2
    if-ne v6, v2, :cond_3

    .line 109
    .line 110
    iget v6, v1, Lcom/android/server/input/InputManagerService$VibrationInfo;->mRepeat:I

    .line 111
    .line 112
    :cond_3
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    iget-object v1, v1, Lcom/android/server/input/InputManagerService$VibrationInfo;->mAmplitudes:[I

    .line 117
    .line 118
    invoke-virtual {v5, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 125
    .line 126
    iget v7, p3, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    .line 127
    .line 128
    move v3, p1

    .line 129
    invoke-interface/range {v2 .. v7}, Lcom/android/server/input/NativeInputManagerService;->vibrateCombined(I[JLandroid/util/SparseArray;II)V

    .line 130
    .line 131
    .line 132
    :cond_5
    :goto_1
    monitor-exit p3

    .line 133
    return-void

    .line 134
    :goto_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    throw p0
.end method

.method public final wakeUp(JILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo p1, "power"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/os/PowerManager;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo p1, "wakeup -"

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, "InputManager"

    .line 37
    .line 38
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final wakeUpWhenPogoConnected(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    long-to-int v2, v0

    .line 12
    iput v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 13
    .line 14
    const/16 v2, 0x20

    .line 15
    .line 16
    shr-long/2addr v0, v2

    .line 17
    long-to-int v0, v0

    .line 18
    iput v0, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 19
    .line 20
    const/16 v0, 0x69

    .line 21
    .line 22
    iput v0, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 23
    .line 24
    const-string v0, "android.policy:POGO_CONNECT"

    .line 25
    .line 26
    iput-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 29
    .line 30
    const/16 v0, 0x6a

    .line 31
    .line 32
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
