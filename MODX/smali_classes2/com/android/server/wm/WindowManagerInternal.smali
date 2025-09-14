.class public abstract Lcom/android/server/wm/WindowManagerInternal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract addBlockScreenCaptureForApps(Landroid/util/ArraySet;)V
.end method

.method public abstract addFixedRefreshRatePackageInternal(Ljava/lang/String;I)V
.end method

.method public abstract addRefreshRateRangeForPackage(Ljava/lang/String;FF)V
.end method

.method public abstract addTrustedTaskOverlay(ILandroid/view/SurfaceControlViewHost$SurfacePackage;)V
.end method

.method public abstract addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V
.end method

.method public abstract captureDisplay(ILandroid/window/ScreenCapture$CaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)V
.end method

.method public abstract clearBlockedApps()V
.end method

.method public abstract clearDisplaySettings(Ljava/lang/String;I)V
.end method

.method public abstract clearForcedDisplaySize(I)V
.end method

.method public abstract clearSnapshotCache()V
.end method

.method public abstract computeWindowsForAccessibility(I)V
.end method

.method public abstract freezeDisplayRotation(IILjava/lang/String;)V
.end method

.method public abstract getA11yOverlayLayer(I)Landroid/view/SurfaceControl;
.end method

.method public abstract getAccessibilityController()Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;
.end method

.method public abstract getDisplayIdForWindow(Landroid/os/IBinder;)I
.end method

.method public abstract getDisplayImePolicy(I)I
.end method

.method public abstract getFocusedWindowToken()Landroid/os/IBinder;
.end method

.method public abstract getFocusedWindowTokenFromWindowStates()Landroid/os/IBinder;
.end method

.method public abstract getHandwritingSurfaceForDisplay(I)Landroid/view/SurfaceControl;
.end method

.method public abstract getInitialDisplayProperties(I)[I
.end method

.method public abstract getInputMethodWindowVisibleHeight(I)I
.end method

.method public abstract getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;
.end method

.method public abstract getMagnificationRegion(ILandroid/graphics/Region;)V
.end method

.method public abstract getTargetWindowTokenFromInputToken(Landroid/os/IBinder;)Landroid/os/IBinder;
.end method

.method public abstract getTopFocusedDisplayId()I
.end method

.method public abstract getTopFocusedDisplayUiContext()Landroid/content/Context;
.end method

.method public abstract getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V
.end method

.method public abstract getWindowName(Landroid/os/IBinder;)Ljava/lang/String;
.end method

.method public abstract getWindowOwnerUserId(Landroid/os/IBinder;)I
.end method

.method public abstract getWindowTransformationMatrixAndMagnificationSpec(Landroid/os/IBinder;)Landroid/util/Pair;
.end method

.method public abstract hasInputMethodClientFocus(Landroid/os/IBinder;III)I
.end method

.method public abstract hasNavigationBar(I)Z
.end method

.method public abstract hideIme(Landroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;)V
.end method

.method public abstract isEmbeddedWindowType(Landroid/os/IBinder;)Z
.end method

.method public abstract isHardKeyboardAvailable()Z
.end method

.method public abstract isHomeSupportedOnDisplay(I)Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardSecure(I)Z
.end method

.method public abstract isKeyguardShowingAndNotOccluded()Z
.end method

.method public abstract isPointInsideWindow(Landroid/os/IBinder;IFF)Z
.end method

.method public abstract isTouchOrFaketouchDevice()Z
.end method

.method public abstract isUidAllowedOnDisplay(II)Z
.end method

.method public abstract isUidFocused(I)Z
.end method

.method public abstract launchHomeForDesktopMode(I)V
.end method

.method public abstract lockNow()V
.end method

.method public abstract moveDisplayToTopIfAllowed(I)V
.end method

.method public abstract moveFocusToAdjacentEmbeddedActivityIfNeeded()Z
.end method

.method public abstract moveWindowTokenToDisplay(Landroid/os/IBinder;I)V
.end method

.method public abstract onDisplayManagerReceivedDeviceState(I)V
.end method

.method public abstract onToggleImeRequested(ZLandroid/os/IBinder;Landroid/os/IBinder;I)Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;
.end method

.method public abstract registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
.end method

.method public abstract registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;I)V
.end method

.method public abstract registerDragDropControllerCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V
.end method

.method public abstract registerOnWindowRemovedListener(Lcom/android/server/wm/WindowManagerInternal$OnWindowRemovedListener;)V
.end method

.method public abstract registerTaskSystemBarsListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V
.end method

.method public abstract removeBlockScreenCaptureForApps(Landroid/util/ArraySet;)V
.end method

.method public abstract removeFixedRefreshRatePackageInternal(Ljava/lang/String;)V
.end method

.method public abstract removeRefreshRateRangeForPackage(Ljava/lang/String;)V
.end method

.method public abstract removeTrustedTaskOverlay(ILandroid/view/SurfaceControlViewHost$SurfacePackage;)V
.end method

.method public final removeWindowToken(Landroid/os/IBinder;ZI)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZZI)V

    return-void
.end method

.method public abstract removeWindowToken(Landroid/os/IBinder;ZZI)V
.end method

.method public abstract reportPasswordChanged(I)V
.end method

.method public abstract requestTraversalFromDisplayManager()V
.end method

.method public abstract requestWindowFocus(Landroid/os/IBinder;)V
.end method

.method public abstract setAccessibilityIdToSurfaceMetadata(Landroid/os/IBinder;I)V
.end method

.method public abstract setBlockScreenCaptureForAppsSessionId(J)V
.end method

.method public abstract setContentRecordingSession(Landroid/view/ContentRecordingSession;)Z
.end method

.method public abstract setDeviceStateListener(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;Lcom/android/server/utils/FoldSettingProvider;)V
.end method

.method public abstract setDismissImeOnBackKeyPressed(ZZ)V
.end method

.method public abstract setDisplaySizeAndDensityInDex(IIII)V
.end method

.method public abstract setForcedDisplaySize(III)V
.end method

.method public abstract setFullscreenMagnificationActivated(IZ)V
.end method

.method public abstract setHomeSupportedOnDisplay(Ljava/lang/String;IZ)V
.end method

.method public abstract setInputFilter(Landroid/view/IInputFilter;)V
.end method

.method public abstract setInputMethodTargetChangeListener(Lcom/android/server/wm/ImeTargetChangeListener;)V
.end method

.method public abstract setMagnificationCallbacks(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z
.end method

.method public abstract setMagnificationSpec(ILandroid/view/MagnificationSpec;)V
.end method

.method public abstract setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V
.end method

.method public abstract setOnImeRequestedChangedListener(Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;)V
.end method

.method public abstract setOrientationRequestPolicy(Z[I[I)V
.end method

.method public abstract setVr2dDisplayId(I)V
.end method

.method public abstract setWallpaperCropHints(Landroid/os/IBinder;Landroid/util/SparseArray;)V
.end method

.method public abstract setWallpaperCropUtils(Lcom/android/server/wallpaper/WallpaperCropper$WallpaperCropUtils;)V
.end method

.method public abstract setWallpaperDisplayAddress(Landroid/os/IBinder;Landroid/view/DisplayAddress;)V
.end method

.method public abstract setWallpaperShowWhenLocked(Landroid/os/IBinder;Z)V
.end method

.method public abstract setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V
.end method

.method public abstract shouldRestoreImeVisibility(Landroid/os/IBinder;)Z
.end method

.method public abstract showBootDialog(I)V
.end method

.method public abstract showGlobalActions()V
.end method

.method public abstract showImePostLayout(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V
.end method

.method public abstract takeAssistScreenshot(Ljava/util/Set;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
.end method

.method public abstract takeScreenshotToTargetWindowInternal(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;
.end method

.method public abstract unregisterAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;I)V
.end method

.method public abstract unregisterOnWindowRemovedListener(Lcom/android/server/wm/WindowManagerInternal$OnWindowRemovedListener;)V
.end method

.method public abstract unregisterTaskSystemBarsListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V
.end method

.method public abstract updateInputMethodTargetWindow(Landroid/os/IBinder;Landroid/os/IBinder;)V
.end method

.method public abstract updateMirroredSurface(I)V
.end method

.method public abstract waitForAllWindowsDrawn(Landroid/os/Message;JI)V
.end method
