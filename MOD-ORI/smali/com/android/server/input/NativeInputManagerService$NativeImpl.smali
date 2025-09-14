.class public Lcom/android/server/input/NativeInputManagerService$NativeImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/input/NativeInputManagerService;


# instance fields
.field public final mPtr:J


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/MessageQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService$NativeImpl;->init(Lcom/android/server/input/InputManagerService;Landroid/os/MessageQueue;)J

    .line 5
    .line 6
    .line 7
    move-result-wide p1

    .line 8
    iput-wide p1, p0, Lcom/android/server/input/NativeInputManagerService$NativeImpl;->mPtr:J

    .line 9
    .line 10
    return-void
.end method

.method private native init(Lcom/android/server/input/InputManagerService;Landroid/os/MessageQueue;)J
.end method


# virtual methods
.method public native addKeyRemapping(III)V
.end method

.method public native canDispatchToDisplay(II)Z
.end method

.method public native cancelCurrentTouch()V
.end method

.method public native cancelVibrate(II)V
.end method

.method public native changeKeyboardLayoutAssociation()V
.end method

.method public native changeTypeAssociation()V
.end method

.method public native changeUniqueIdAssociation()V
.end method

.method public native createInputChannel(Ljava/lang/String;I)Landroid/view/InputChannel;
.end method

.method public native createInputMonitor(ILjava/lang/String;II)Landroid/view/InputChannel;
.end method

.method public native disableInputDevice(I)V
.end method

.method public native disableSensor(II)V
.end method

.method public native displayRemoved(I)V
.end method

.method public native dump()Ljava/lang/String;
.end method

.method public native enableFlowPointer(Z)V
.end method

.method public native enableInputDevice(I)V
.end method

.method public native enableSensor(IIII)Z
.end method

.method public native enableWirelessKeyboardShare(Z)V
.end method

.method public native flushSensor(II)Z
.end method

.method public native forceFadeIcon(I)V
.end method

.method public native forceHideCursor(Z)V
.end method

.method public native getBatteryCapacity(I)I
.end method

.method public native getBatteryDevicePath(I)Ljava/lang/String;
.end method

.method public native getBatteryStatus(I)I
.end method

.method public native getBluetoothAddress(I)Ljava/lang/String;
.end method

.method public native getGlobalMetaState(I)I
.end method

.method public native getInboundQueueLength()I
.end method

.method public native getInputDevicePath(I)Ljava/lang/String;
.end method

.method public native getKeyCodeForKeyLocation(II)I
.end method

.method public native getKeyCodeState(III)I
.end method

.method public native getLastUsedInputDeviceId()I
.end method

.method public native getLightColor(II)I
.end method

.method public native getLightPlayerId(II)I
.end method

.method public native getLights(I)Ljava/util/List;
.end method

.method public native getMotionIdleTimeMillis(Z)J
.end method

.method public native getMouseCursorPosition(I)[F
.end method

.method public native getMousePointerSpeed()I
.end method

.method public native getScanCodeState(III)I
.end method

.method public native getSensorList(I)[Landroid/hardware/input/InputSensorInfo;
.end method

.method public native getSwitchState(III)I
.end method

.method public native getVibratorIds(I)[I
.end method

.method public native hasKeys(II[I[Z)Z
.end method

.method public native injectInputEvent(Landroid/view/InputEvent;ZIIIIII)I
.end method

.method public native isUidTouched(I)Z
.end method

.method public native isVibrating(I)Z
.end method

.method public native monitor()V
.end method

.method public native notifyPortAssociationsChanged()V
.end method

.method public native pilferPointers(Landroid/os/IBinder;)V
.end method

.method public native reloadCalibration()V
.end method

.method public native reloadDeviceAliases()V
.end method

.method public native reloadKeyboardLayouts()V
.end method

.method public native reloadPointerIcons()V
.end method

.method public native removeInputChannel(Landroid/os/IBinder;)V
.end method

.method public native requestPointerCapture(Landroid/os/IBinder;Z)V
.end method

.method public native setAccessibilityBounceKeysThreshold(I)V
.end method

.method public native setAccessibilitySlowKeysThreshold(I)V
.end method

.method public native setAccessibilityStickyKeysEnabled(Z)V
.end method

.method public native setBackButtonBehavior(I)V
.end method

.method public native setCoverTestModeType(I)V
.end method

.method public native setCoverVerify(I)V
.end method

.method public native setCursorPosition(III)V
.end method

.method public native setDexMode(ZII)V
.end method

.method public native setDisplayDpi(FF)V
.end method

.method public native setDisplayEligibilityForPointerCapture(IZ)V
.end method

.method public native setDisplayFolded(Z)V
.end method

.method public native setDisplayViewports([Landroid/hardware/display/DisplayViewport;)V
.end method

.method public native setEnableTapToClick(Z)V
.end method

.method public native setFlowPointerDirection(I)V
.end method

.method public native setFocusedApplication(ILandroid/view/InputApplicationHandle;)V
.end method

.method public native setFocusedDisplay(I)V
.end method

.method public native setFoldingState(I)V
.end method

.method public native setForwardButtonBehavior(I)V
.end method

.method public native setHoverIcon(Landroid/view/PointerIcon;I)V
.end method

.method public native setInTouchMode(ZIIZI)Z
.end method

.method public native setInputDispatchMode(ZZ)V
.end method

.method public native setInputFilterEnabled(Z)V
.end method

.method public native setInputMetaData(II)V
.end method

.method public native setInputMethodConnectionIsActive(Z)V
.end method

.method public native setInteractive(Z)V
.end method

.method public native setInteractiveForInternalDisplay(Z)V
.end method

.method public native setKeyRepeatConfiguration(II)V
.end method

.method public native setLightColor(III)V
.end method

.method public native setLightPlayerId(III)V
.end method

.method public native setMaximumObscuringOpacityForTouch(F)V
.end method

.method public native setMinTimeBetweenUserActivityPokes(J)V
.end method

.method public native setMotionClassifierEnabled(Z)V
.end method

.method public native setMousePointerAccelerationEnabled(IZ)V
.end method

.method public native setMultiControlOutOfFocus(Z)V
.end method

.method public native setPenHovering(Z)V
.end method

.method public native setPenModeOnDex(I)V
.end method

.method public native setPointerDisplayId(I)V
.end method

.method public native setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z
.end method

.method public native setPointerIconVisibility(IZ)V
.end method

.method public native setPointerSpeed(I)V
.end method

.method public native setPrimaryMouseButtonLocation(I)V
.end method

.method public native setReverseSwipeGesture(Z)V
.end method

.method public native setScrollSpeed(I)V
.end method

.method public native setSecondaryButtonBehavior(I)V
.end method

.method public native setShowHovering(Z)V
.end method

.method public native setShowTouches(Z)V
.end method

.method public native setStylusButtonMotionEventsEnabled(Z)V
.end method

.method public native setStylusPointerIconEnabled(Z)V
.end method

.method public native setSystemUiLightsOut(Z)V
.end method

.method public native setSystemUiLightsOutForDisplay(ZI)V
.end method

.method public native setTalkBack(Z)V
.end method

.method public native setTertiaryButtonBehavior(I)V
.end method

.method public native setTouchpadNaturalScrollingEnabled(Z)V
.end method

.method public native setTouchpadPointerSpeed(I)V
.end method

.method public native setTouchpadRightClickZoneEnabled(Z)V
.end method

.method public native setTouchpadTapDraggingEnabled(Z)V
.end method

.method public native setTouchpadTapToClickEnabled(Z)V
.end method

.method public native setTspFeatures(I)V
.end method

.method public native setUseMouseAcceleration(Z)V
.end method

.method public native showAllTouches(Z)V
.end method

.method public native start()V
.end method

.method public native sysfsNodeChanged(Ljava/lang/String;)V
.end method

.method public native toggleCapsLock(I)V
.end method

.method public native transferTouch(Landroid/os/IBinder;I)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z
.end method

.method public native updateInputMetaState(IZ)V
.end method

.method public native verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;
.end method

.method public native vibrate(I[J[III)V
.end method

.method public native vibrateCombined(I[JLandroid/util/SparseArray;II)V
.end method
