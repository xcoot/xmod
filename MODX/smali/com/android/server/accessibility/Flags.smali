.class public abstract Lcom/android/server/accessibility/Flags;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FEATURE_FLAGS:Lcom/android/server/accessibility/FeatureFlagsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static clearDefaultFromA11yShortcutTargetServiceRestore()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public static computeWindowChangesOnA11yV2()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public static doNotResetKeyEventState()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public static enableColorCorrectionSaturation()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/FeatureFlagsImpl;->accessibility_is_cached:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    :try_start_0
    const-string v0, "accessibility"

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ljava/lang/String;

    .line 10
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 13
    move-result-object v0

    .line 14
    const-string/jumbo v1, "com.android.server.accessibility.enable_color_correction_saturation"

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 21
    move-result v0

    .line 22
    sput-boolean v0, Lcom/android/server/accessibility/FeatureFlagsImpl;->enableColorCorrectionSaturation:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    sput-boolean v2, Lcom/android/server/accessibility/FeatureFlagsImpl;->accessibility_is_cached:Z

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    new-instance v1, Ljava/lang/RuntimeException;

    .line 30
    const-string v2, "Cannot read value from namespace accessibility from DeviceConfig. It could be that the code using flag executed before SettingsProvider initialization. Please use fixed read-only flag by adding is_fixed_read_only: true in flag declaration."

    .line 32
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    throw v1

    .line 36
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/server/accessibility/FeatureFlagsImpl;->enableColorCorrectionSaturation:Z

    .line 38
    return v0
.end method

.method public static enableHardwareShortcutDisablesWarning()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public static enableMagnificationMultipleFingerMultipleTapGesture()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public static enableMagnificationOneFingerPanningGesture()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public static fullscreenFlingGesture()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public static handleMultiDeviceInput()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public static managerAvoidReceiverTimeout()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public static managerPackageMonitorLogicFix()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public static pinchZoomZeroMinSpan()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public static proxyUseAppsOnVirtualDeviceListener()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public static removeOnWindowInfosChangedHandler()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public static sendA11yEventsBasedOnState()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public static sendHoverEventsBasedOnEventStream()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public static skipPackageChangeBeforeUserSwitch()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
