.class public final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActiveColorMode:I

.field public mActiveModeId:I

.field public mActiveRenderFrameRate:F

.field public mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

.field public final mActiveSfDisplayModeAtStartId:I

.field public mAllmRequested:Z

.field public mAllmSupported:Z

.field public final mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

.field public mBrightnessState:F

.field public mCommittedState:I

.field public mConnectedHdcpLevel:I

.field public mCurrentHdrSdrRatio:F

.field public mDefaultModeGroup:I

.field public mDefaultModeId:I

.field public final mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

.field public mDisplayModeSpecsInvalid:Z

.field public mDisplayStateCount:I

.field public mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

.field public mGameContentTypeRequested:Z

.field public mGameContentTypeSupported:Z

.field public mHavePendingChanges:Z

.field public mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field public mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public final mIsFirstDisplay:Z

.field public mLastResolution:I

.field public final mPhysicalDisplayId:J

.field public mRequestedState:I

.field public mSdrBrightnessState:F

.field public mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

.field public mSidekickActive:Z

.field public final mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

.field public mState:I

.field public final mStateChangeCallbacks:Ljava/util/ArrayList;

.field public mStateOverride:I

.field public mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

.field public final mSupportedColorModes:Ljava/util/ArrayList;

.field public final mSupportedModes:Landroid/util/SparseArray;

.field public mSystemPreferredModeId:I

.field public mUserPreferredMode:Landroid/view/Display$Mode;

.field public mUserPreferredModeId:I

.field public final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method public static -$$Nest$mnotifyStateChangeFinish(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Ljava/util/ArrayList;III)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iput-wide v2, v1, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->mStartTimeMillis:J

    .line 23
    .line 24
    new-instance p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    move-object v0, p0

    .line 28
    move v2, p2

    .line 29
    move v3, p3

    .line 30
    move v4, p4

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;IIII)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;JLandroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;Z)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 2
    .line 3
    const-string/jumbo v0, "local:"

    .line 4
    .line 5
    .line 6
    invoke-static {p3, p4, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    iget-object v5, p1, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/server/display/DisplayAdapter;->mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPixelAnisotropyCorrectionEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    move-object v1, p0

    .line 21
    move-object v2, p1

    .line 22
    move-object v3, p2

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 39
    .line 40
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 49
    .line 50
    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCommittedState:I

    .line 51
    .line 52
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 53
    .line 54
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    .line 55
    .line 56
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSdrBrightnessState:F

    .line 57
    .line 58
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCurrentHdrSdrRatio:F

    .line 59
    .line 60
    const/4 v1, -0x1

    .line 61
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 62
    .line 63
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    .line 64
    .line 65
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 66
    .line 67
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayModeAtStartId:I

    .line 68
    .line 69
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 70
    .line 71
    new-array v1, v0, [Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 72
    .line 73
    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 74
    .line 75
    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStateOverride:I

    .line 76
    .line 77
    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRequestedState:I

    .line 78
    .line 79
    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayStateCount:I

    .line 80
    .line 81
    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mLastResolution:I

    .line 82
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStateChangeCallbacks:Ljava/util/ArrayList;

    .line 89
    .line 90
    iput-wide p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 91
    .line 92
    iput-boolean p8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    .line 93
    .line 94
    invoke-virtual {p0, p5, p6, p7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayPropertiesLocked(Landroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    .line 95
    .line 96
    .line 97
    const-class p5, Landroid/hardware/sidekick/SidekickInternal;

    .line 98
    .line 99
    invoke-static {p5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p5

    .line 103
    check-cast p5, Landroid/hardware/sidekick/SidekickInternal;

    .line 104
    .line 105
    iput-object p5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    .line 106
    .line 107
    new-instance p5, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    .line 108
    .line 109
    iget-object v3, p1, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 110
    .line 111
    move-object v0, p5

    .line 112
    move-object v1, p2

    .line 113
    move v2, p8

    .line 114
    move-wide v4, p3

    .line 115
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;-><init>(Landroid/os/IBinder;ZLcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;J)V

    .line 116
    .line 117
    .line 118
    iput-object p5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    .line 119
    .line 120
    iget p1, p6, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    .line 121
    .line 122
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayModeAtStartId:I

    .line 123
    .line 124
    return-void
.end method

.method public static getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    .line 5
    aget-object v2, p0, v1

    .line 6
    .line 7
    iget v3, v2, Landroid/view/SurfaceControl$DisplayMode;->id:I

    .line 8
    .line 9
    if-ne v3, p1, :cond_0

    .line 10
    .line 11
    return-object v2

    .line 12
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v0, "Can\'t find display mode with id "

    .line 18
    .line 19
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "LocalDisplayAdapter"

    .line 30
    .line 31
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public static refreshRatesEquals(Ljava/util/List;[F)Z
    .locals 4

    .line 1
    check-cast p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    array-length v1, p1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    move v0, v2

    .line 13
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge v0, v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Float;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    aget v3, p1, v0

    .line 34
    .line 35
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eq v1, v3, :cond_1

    .line 40
    .line 41
    return v2

    .line 42
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 p0, 0x1

    .line 46
    return p0
.end method


# virtual methods
.method public final applyPendingDisplayDeviceInfoChangesLocked()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "mPhysicalDisplayId="

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 13
    .line 14
    const-string/jumbo v3, "mDisplayModeSpecs={"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string/jumbo v1, "}"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string/jumbo v1, "mDisplayModeSpecsInvalid="

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 48
    .line 49
    const-string/jumbo v2, "mActiveModeId="

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 57
    .line 58
    const-string/jumbo v2, "mActiveColorMode="

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 66
    .line 67
    const-string/jumbo v2, "mDefaultModeId="

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 75
    .line 76
    const-string/jumbo v2, "mUserPreferredModeId="

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 84
    .line 85
    const-string/jumbo v2, "mState="

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 93
    .line 94
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string/jumbo v1, "mCommittedState="

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCommittedState:I

    .line 117
    .line 118
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string/jumbo v1, "mBrightnessState="

    .line 135
    .line 136
    .line 137
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    .line 141
    .line 142
    const-string/jumbo v2, "mBacklightAdapter="

    .line 143
    .line 144
    .line 145
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string/jumbo v1, "mAllmSupported="

    .line 164
    .line 165
    .line 166
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    .line 170
    .line 171
    const-string/jumbo v2, "mAllmRequested="

    .line 172
    .line 173
    .line 174
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    .line 179
    .line 180
    const-string/jumbo v2, "mGameContentTypeSupported="

    .line 181
    .line 182
    .line 183
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    .line 188
    .line 189
    const-string/jumbo v2, "mGameContentTypeRequested="

    .line 190
    .line 191
    .line 192
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    .line 197
    .line 198
    const-string/jumbo v2, "mStaticDisplayInfo="

    .line 199
    .line 200
    .line 201
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    const-string/jumbo v0, "mSfDisplayModes="

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    .line 224
    .line 225
    array-length v1, v0

    .line 226
    const/4 v2, 0x0

    .line 227
    move v3, v2

    .line 228
    :goto_0
    const-string v4, "  "

    .line 229
    .line 230
    if-ge v3, v1, :cond_0

    .line 231
    .line 232
    aget-object v5, v0, v3

    .line 233
    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    add-int/lit8 v3, v3, 0x1

    .line 250
    .line 251
    goto :goto_0

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    const-string/jumbo v1, "mActiveSfDisplayMode="

    .line 255
    .line 256
    .line 257
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string/jumbo v1, "mActiveRenderFrameRate="

    .line 275
    .line 276
    .line 277
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    const-string/jumbo v0, "mSupportedModes="

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 299
    .line 300
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-ge v2, v0, :cond_1

    .line 305
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 312
    .line 313
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    add-int/lit8 v2, v2, 0x1

    .line 328
    .line 329
    goto :goto_1

    .line 330
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    const-string/jumbo v1, "mSupportedColorModes="

    .line 333
    .line 334
    .line 335
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    const-string/jumbo v1, "mDisplayDeviceConfig="

    .line 353
    .line 354
    .line 355
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 359
    .line 360
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p0

    .line 367
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    return-void
.end method

.method public final findMatchingModeIdLocked(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "Invalid display mode ID "

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "LocalDisplayAdapter"

    .line 25
    .line 26
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-ge p1, v2, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    iget-object p0, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getModeId()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    return v1
.end method

.method public final findMode(I)Landroid/view/Display$Mode;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ne v2, p1, :cond_0

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public final findSfDisplayModeIdLocked(II)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    .line 13
    .line 14
    array-length v1, p0

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_2

    .line 18
    .line 19
    aget-object v4, p0, v2

    .line 20
    .line 21
    invoke-virtual {p1, v4}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    if-ne v3, v0, :cond_0

    .line 28
    .line 29
    iget v3, v4, Landroid/view/SurfaceControl$DisplayMode;->id:I

    .line 30
    .line 31
    :cond_0
    iget v5, v4, Landroid/view/SurfaceControl$DisplayMode;->group:I

    .line 32
    .line 33
    if-ne v5, p2, :cond_1

    .line 34
    .line 35
    iget p0, v4, Landroid/view/SurfaceControl$DisplayMode;->id:I

    .line 36
    .line 37
    return p0

    .line 38
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move v0, v3

    .line 42
    :cond_3
    return v0
.end method

.method public final findUserPreferredModeIdLocked(Landroid/view/Display$Mode;)I
    .locals 5

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {p1, v2, v3, v4}, Landroid/view/Display$Mode;->matches(IIF)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p0, -0x1

    .line 49
    return p0
.end method

.method public final getActiveDisplayModeAtStartLocked()Landroid/view/Display$Mode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayModeAtStartId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMode(I)Landroid/view/Display$Mode;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x1

    .line 6
    iget-object v0, v1, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 7
    .line 8
    if-nez v0, :cond_f

    .line 9
    .line 10
    iget-object v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 11
    .line 12
    iget-object v5, v0, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    .line 13
    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v5}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    iput-object v5, v0, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    .line 25
    .line 26
    :cond_0
    iget-object v5, v0, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v6, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    .line 29
    .line 30
    iget-boolean v6, v6, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    .line 31
    .line 32
    iget-object v7, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    .line 33
    .line 34
    iget-boolean v8, v7, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 38
    .line 39
    if-eqz v6, :cond_3

    .line 40
    .line 41
    new-instance v6, Lcom/android/server/display/DisplayDeviceConfig;

    .line 42
    .line 43
    invoke-direct {v6, v5, v0}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 44
    .line 45
    .line 46
    iget-boolean v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    .line 47
    .line 48
    iput-boolean v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mIsFirstDisplay:Z

    .line 49
    .line 50
    sget-boolean v10, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    .line 51
    .line 52
    if-eqz v10, :cond_1

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    move v0, v4

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move v0, v3

    .line 59
    :goto_0
    iput-boolean v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mIsCoverDisplay:Z

    .line 60
    .line 61
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromConfigXml()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessConstraintsFromConfigXml()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMapFromConfigXml()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsFromConfigXml()V

    .line 71
    .line 72
    .line 73
    iget-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v10, Lcom/android/server/display/config/SensorData;

    .line 80
    .line 81
    const v11, 0x1040345

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v11, ""

    .line 89
    .line 90
    invoke-direct {v10, v0, v11}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iput-object v10, v6, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    .line 94
    .line 95
    new-instance v0, Lcom/android/server/display/config/SensorData;

    .line 96
    .line 97
    invoke-direct {v0}, Lcom/android/server/display/config/SensorData;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    .line 101
    .line 102
    new-instance v0, Lcom/android/server/display/config/SensorData;

    .line 103
    .line 104
    const-string v10, "SKIN"

    .line 105
    .line 106
    invoke-direct {v0, v10, v9}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iput-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 110
    .line 111
    iget-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v9, v0}, Lcom/android/server/display/config/RefreshRateData;->loadRefreshRateData(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/RefreshRateData;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 122
    .line 123
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholds()V

    .line 124
    .line 125
    .line 126
    new-instance v0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    .line 127
    .line 128
    iget-object v10, v6, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 129
    .line 130
    iget-object v11, v6, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 131
    .line 132
    if-eqz v11, :cond_2

    .line 133
    .line 134
    iget-object v11, v11, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklightToBrightness:Landroid/util/Spline;

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    iget-object v11, v6, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 138
    .line 139
    :goto_1
    iget-object v12, v6, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 140
    .line 141
    invoke-direct {v0, v10, v12, v9, v11}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/AutoBrightness;Landroid/util/Spline;)V

    .line 142
    .line 143
    .line 144
    iput-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    .line 145
    .line 146
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessAvailableFromConfigXml()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v9}, Lcom/android/server/display/DisplayDeviceConfig;->loadRefreshRateSetting(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const v10, 0x10e0133

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getInteger(I)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    iput v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    .line 170
    .line 171
    invoke-virtual {v6, v9}, Lcom/android/server/display/DisplayDeviceConfig;->loadIdleScreenRefreshRateTimeoutConfigs(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 172
    .line 173
    .line 174
    const-string v0, "<config.xml>"

    .line 175
    .line 176
    iput-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->loadHighBrightnessModeDataFromConfigXml()V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_3
    invoke-static {v5, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromPmValues(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    :goto_2
    const-string v10, "DisplayDeviceConfig"

    .line 187
    .line 188
    new-instance v0, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    const-string/jumbo v12, "etc"

    .line 198
    .line 199
    .line 200
    const-string/jumbo v13, "displayconfig"

    .line 201
    .line 202
    .line 203
    const-string/jumbo v14, "default.xml"

    .line 204
    .line 205
    .line 206
    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v15

    .line 210
    invoke-static {v11, v15}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v15

    .line 225
    invoke-static {v11, v15}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    const v11, 0x10e0081

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getInteger(I)I

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    invoke-static {v5}, Landroid/content/res/Configuration;->getUiModeTypeString(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    if-eqz v5, :cond_4

    .line 248
    .line 249
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 250
    .line 251
    .line 252
    move-result-object v11

    .line 253
    const-string/jumbo v15, "default_"

    .line 254
    .line 255
    .line 256
    const-string v9, ".xml"

    .line 257
    .line 258
    invoke-static {v15, v5, v9}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    filled-new-array {v12, v13, v5}, [Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    invoke-static {v11, v5}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v9

    .line 281
    invoke-static {v5, v9}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    if-eqz v5, :cond_6

    .line 297
    .line 298
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    check-cast v5, Ljava/io/File;

    .line 303
    .line 304
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 305
    .line 306
    .line 307
    move-result v9

    .line 308
    if-eqz v9, :cond_5

    .line 309
    .line 310
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 311
    .line 312
    .line 313
    move-result v9

    .line 314
    if-eqz v9, :cond_5

    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_6
    const/4 v5, 0x0

    .line 318
    :goto_3
    if-nez v5, :cond_7

    .line 319
    .line 320
    const/4 v9, 0x0

    .line 321
    goto :goto_8

    .line 322
    :cond_7
    :try_start_0
    new-instance v9, Ljava/io/BufferedInputStream;

    .line 323
    .line 324
    new-instance v0, Ljava/io/FileInputStream;

    .line 325
    .line 326
    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 327
    .line 328
    .line 329
    invoke-direct {v9, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 330
    .line 331
    .line 332
    :try_start_1
    invoke-static {v9}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    .line 333
    .line 334
    .line 335
    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 336
    if-nez v11, :cond_8

    .line 337
    .line 338
    :try_start_2
    const-string v0, "Default DisplayDeviceConfig file is null"

    .line 339
    .line 340
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    .line 342
    .line 343
    goto :goto_4

    .line 344
    :catchall_0
    move-exception v0

    .line 345
    move-object v12, v0

    .line 346
    goto :goto_5

    .line 347
    :cond_8
    :goto_4
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0

    .line 348
    .line 349
    .line 350
    move-object v9, v11

    .line 351
    goto :goto_8

    .line 352
    :catch_0
    move-exception v0

    .line 353
    move-object v9, v11

    .line 354
    goto :goto_7

    .line 355
    :catchall_1
    move-exception v0

    .line 356
    move-object v12, v0

    .line 357
    const/4 v11, 0x0

    .line 358
    :goto_5
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 359
    .line 360
    .line 361
    goto :goto_6

    .line 362
    :catchall_2
    move-exception v0

    .line 363
    move-object v9, v0

    .line 364
    :try_start_5
    invoke-virtual {v12, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 365
    .line 366
    .line 367
    :goto_6
    throw v12
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0

    .line 368
    :catch_1
    move-exception v0

    .line 369
    const/4 v9, 0x0

    .line 370
    :goto_7
    new-instance v11, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    const-string v12, "Encountered an error while reading/parsing display config file: "

    .line 373
    .line 374
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    invoke-static {v10, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    .line 386
    .line 387
    :goto_8
    if-nez v9, :cond_9

    .line 388
    .line 389
    goto :goto_9

    .line 390
    :cond_9
    iget-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    .line 391
    .line 392
    if-nez v0, :cond_a

    .line 393
    .line 394
    invoke-virtual {v6, v9}, Lcom/android/server/display/DisplayDeviceConfig;->loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 395
    .line 396
    .line 397
    :cond_a
    :goto_9
    if-eqz v8, :cond_d

    .line 398
    .line 399
    iput-boolean v4, v6, Lcom/android/server/display/DisplayDeviceConfig;->mUseSurfaceControlBrightness:Z

    .line 400
    .line 401
    iget-boolean v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mIsSimpleMappingStrategy:Z

    .line 402
    .line 403
    if-nez v0, :cond_c

    .line 404
    .line 405
    move v0, v3

    .line 406
    :goto_a
    iget-object v2, v6, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 407
    .line 408
    array-length v5, v2

    .line 409
    if-ge v0, v5, :cond_b

    .line 410
    .line 411
    aget v5, v2, v0

    .line 412
    .line 413
    iget v8, v6, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 414
    .line 415
    div-float/2addr v5, v8

    .line 416
    aput v5, v2, v0

    .line 417
    .line 418
    add-int/2addr v0, v4

    .line 419
    goto :goto_a

    .line 420
    :cond_b
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->createBacklightConversionSplines()V

    .line 421
    .line 422
    .line 423
    goto :goto_b

    .line 424
    :cond_c
    iget v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 425
    .line 426
    const/4 v5, 0x0

    .line 427
    new-array v8, v2, [F

    .line 428
    .line 429
    aput v5, v8, v3

    .line 430
    .line 431
    aput v0, v8, v4

    .line 432
    .line 433
    new-array v0, v2, [F

    .line 434
    .line 435
    fill-array-data v0, :array_0

    .line 436
    .line 437
    .line 438
    invoke-static {v8, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    iput-object v2, v6, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 443
    .line 444
    invoke-static {v0, v8}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    iput-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 449
    .line 450
    :cond_d
    :goto_b
    iput-object v6, v1, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 451
    .line 452
    iget-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    .line 453
    .line 454
    if-eqz v0, :cond_e

    .line 455
    .line 456
    check-cast v0, Ljava/util/ArrayList;

    .line 457
    .line 458
    const-string/jumbo v2, "canSetBrightnessViaHwc"

    .line 459
    .line 460
    .line 461
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-eqz v0, :cond_e

    .line 466
    .line 467
    move v3, v4

    .line 468
    :cond_e
    iput-boolean v3, v7, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    .line 469
    .line 470
    :cond_f
    iget-object v0, v1, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 471
    .line 472
    return-object v0

    .line 473
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 4
    .line 5
    if-nez v1, :cond_1c

    .line 6
    .line 7
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_RESOLUTION_POLICY:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    .line 12
    .line 13
    iget-boolean v1, v1, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    .line 18
    .line 19
    iget v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 20
    .line 21
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 22
    .line 23
    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 33
    .line 34
    :goto_0
    new-instance v2, Lcom/android/server/display/DisplayDeviceInfo;

    .line 35
    .line 36
    invoke-direct {v2}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 40
    .line 41
    iget v3, v1, Landroid/view/SurfaceControl$DisplayMode;->width:I

    .line 42
    .line 43
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 44
    .line 45
    iget v3, v1, Landroid/view/SurfaceControl$DisplayMode;->height:I

    .line 46
    .line 47
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 48
    .line 49
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 50
    .line 51
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 52
    .line 53
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    .line 54
    .line 55
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    .line 56
    .line 57
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 58
    .line 59
    const/4 v4, -0x1

    .line 60
    if-eq v3, v4, :cond_1

    .line 61
    .line 62
    move v4, v3

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 65
    .line 66
    :goto_1
    iput v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 67
    .line 68
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    .line 69
    .line 70
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    new-array v5, v4, [Landroid/view/Display$Mode;

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    :goto_2
    if-ge v7, v4, :cond_2

    .line 80
    .line 81
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    check-cast v8, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 86
    .line 87
    iget-object v8, v8, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 88
    .line 89
    aput-object v8, v5, v7

    .line 90
    .line 91
    add-int/lit8 v7, v7, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    iput-object v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 95
    .line 96
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 97
    .line 98
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 99
    .line 100
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    .line 101
    .line 102
    iget-boolean v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    .line 103
    .line 104
    iput-boolean v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    .line 105
    .line 106
    iget-boolean v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    .line 107
    .line 108
    iput-boolean v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    .line 109
    .line 110
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    new-array v3, v3, [I

    .line 117
    .line 118
    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 119
    .line 120
    const/4 v2, 0x0

    .line 121
    :goto_3
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-ge v2, v3, :cond_3

    .line 128
    .line 129
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 130
    .line 131
    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 132
    .line 133
    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Ljava/lang/Integer;

    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    aput v4, v3, v2

    .line 146
    .line 147
    add-int/lit8 v2, v2, 0x1

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_3
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 151
    .line 152
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 153
    .line 154
    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 155
    .line 156
    iget-wide v3, v1, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    .line 157
    .line 158
    iput-wide v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 159
    .line 160
    iget-wide v3, v1, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    .line 161
    .line 162
    iput-wide v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 163
    .line 164
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 165
    .line 166
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 167
    .line 168
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCommittedState:I

    .line 169
    .line 170
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    .line 171
    .line 172
    iget-object v3, v0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 173
    .line 174
    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 175
    .line 176
    iget-wide v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 177
    .line 178
    invoke-static {v2, v3}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 183
    .line 184
    iput-object v2, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 185
    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    iget-object v4, v4, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    .line 191
    .line 192
    const/high16 v5, 0x43200000    # 160.0f

    .line 193
    .line 194
    if-nez v4, :cond_4

    .line 195
    .line 196
    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    .line 197
    .line 198
    iget v4, v4, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    .line 199
    .line 200
    mul-float/2addr v4, v5

    .line 201
    float-to-double v7, v4

    .line 202
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 203
    .line 204
    add-double/2addr v7, v9

    .line 205
    double-to-int v4, v7

    .line 206
    goto :goto_5

    .line 207
    :cond_4
    iget-object v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 208
    .line 209
    iget v8, v7, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 210
    .line 211
    iget v7, v7, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 212
    .line 213
    mul-int/2addr v8, v8

    .line 214
    mul-int/2addr v7, v7

    .line 215
    add-int/2addr v7, v8

    .line 216
    sget-object v8, Lcom/android/server/display/DensityMapping$Entry;->ZEROES:Lcom/android/server/display/DensityMapping$Entry;

    .line 217
    .line 218
    iget-object v4, v4, Lcom/android/server/display/DensityMapping;->mSortedDensityMappingEntries:[Lcom/android/server/display/DensityMapping$Entry;

    .line 219
    .line 220
    array-length v9, v4

    .line 221
    const/4 v10, 0x0

    .line 222
    :goto_4
    if-ge v10, v9, :cond_5

    .line 223
    .line 224
    aget-object v11, v4, v10

    .line 225
    .line 226
    iget v12, v11, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    .line 227
    .line 228
    if-gt v12, v7, :cond_6

    .line 229
    .line 230
    add-int/lit8 v10, v10, 0x1

    .line 231
    .line 232
    move-object v8, v11

    .line 233
    goto :goto_4

    .line 234
    :cond_5
    const/4 v11, 0x0

    .line 235
    :cond_6
    iget v4, v8, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    .line 236
    .line 237
    if-ne v4, v7, :cond_7

    .line 238
    .line 239
    iget v4, v8, Lcom/android/server/display/DensityMapping$Entry;->density:I

    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_7
    if-nez v11, :cond_8

    .line 243
    .line 244
    sget-object v4, Lcom/android/server/display/DensityMapping$Entry;->ZEROES:Lcom/android/server/display/DensityMapping$Entry;

    .line 245
    .line 246
    move-object v11, v8

    .line 247
    move-object v8, v4

    .line 248
    :cond_8
    iget v4, v8, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    .line 249
    .line 250
    int-to-double v9, v4

    .line 251
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 252
    .line 253
    .line 254
    move-result-wide v9

    .line 255
    iget v4, v11, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    .line 256
    .line 257
    int-to-double v12, v4

    .line 258
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    .line 259
    .line 260
    .line 261
    move-result-wide v12

    .line 262
    int-to-double v14, v7

    .line 263
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    .line 264
    .line 265
    .line 266
    move-result-wide v14

    .line 267
    sub-double/2addr v14, v9

    .line 268
    iget v4, v11, Lcom/android/server/display/DensityMapping$Entry;->density:I

    .line 269
    .line 270
    iget v7, v8, Lcom/android/server/display/DensityMapping$Entry;->density:I

    .line 271
    .line 272
    sub-int/2addr v4, v7

    .line 273
    int-to-double v5, v4

    .line 274
    mul-double/2addr v14, v5

    .line 275
    sub-double/2addr v12, v9

    .line 276
    div-double/2addr v14, v12

    .line 277
    int-to-double v4, v7

    .line 278
    add-double/2addr v14, v4

    .line 279
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    .line 280
    .line 281
    .line 282
    move-result-wide v4

    .line 283
    long-to-int v4, v4

    .line 284
    :goto_5
    iput v4, v3, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 285
    .line 286
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 287
    .line 288
    iget v4, v1, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    .line 289
    .line 290
    iput v4, v3, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 291
    .line 292
    iget v1, v1, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    .line 293
    .line 294
    iput v1, v3, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 295
    .line 296
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    .line 297
    .line 298
    iget-object v4, v1, Landroid/view/SurfaceControl$StaticDisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 299
    .line 300
    iput-object v4, v3, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 301
    .line 302
    iget v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mConnectedHdcpLevel:I

    .line 303
    .line 304
    const/4 v5, 0x1

    .line 305
    const/4 v6, 0x2

    .line 306
    if-eqz v4, :cond_a

    .line 307
    .line 308
    if-lt v4, v6, :cond_9

    .line 309
    .line 310
    move v4, v5

    .line 311
    goto :goto_6

    .line 312
    :cond_9
    const/4 v4, 0x0

    .line 313
    :goto_6
    iput-boolean v4, v1, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    .line 314
    .line 315
    :cond_a
    iget-boolean v1, v1, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    .line 316
    .line 317
    if-eqz v1, :cond_b

    .line 318
    .line 319
    const/16 v1, 0xc

    .line 320
    .line 321
    iput v1, v3, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 322
    .line 323
    :cond_b
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 324
    .line 325
    iget-object v3, v1, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    .line 326
    .line 327
    if-nez v3, :cond_c

    .line 328
    .line 329
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    iput-object v3, v1, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    .line 338
    .line 339
    :cond_c
    iget-object v3, v1, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    .line 340
    .line 341
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 346
    .line 347
    iget v7, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 348
    .line 349
    or-int/lit8 v9, v7, 0x1

    .line 350
    .line 351
    iput v9, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 352
    .line 353
    iget-boolean v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    .line 354
    .line 355
    if-eqz v9, :cond_e

    .line 356
    .line 357
    const v2, 0x11101dd

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    if-nez v2, :cond_d

    .line 365
    .line 366
    sget-boolean v2, Landroid/os/Build;->IS_EMULATOR:Z

    .line 367
    .line 368
    if-eqz v2, :cond_14

    .line 369
    .line 370
    const-string/jumbo v2, "ro.boot.emulator.circular"

    .line 371
    .line 372
    .line 373
    const/4 v8, 0x0

    .line 374
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-eqz v2, :cond_14

    .line 379
    .line 380
    :cond_d
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 381
    .line 382
    iget v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 383
    .line 384
    or-int/lit16 v4, v4, 0x100

    .line 385
    .line 386
    iput v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 387
    .line 388
    goto :goto_8

    .line 389
    :cond_e
    const/4 v8, 0x0

    .line 390
    iget-object v10, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    .line 391
    .line 392
    iget-boolean v10, v10, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    .line 393
    .line 394
    if-eqz v10, :cond_f

    .line 395
    .line 396
    const v2, 0x8000c1

    .line 397
    .line 398
    .line 399
    or-int/2addr v2, v7

    .line 400
    iput v2, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 401
    .line 402
    goto :goto_8

    .line 403
    :cond_f
    const v4, 0x11101d5

    .line 404
    .line 405
    .line 406
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    if-nez v4, :cond_10

    .line 411
    .line 412
    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 413
    .line 414
    iget v7, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 415
    .line 416
    or-int/lit16 v7, v7, 0x80

    .line 417
    .line 418
    iput v7, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 419
    .line 420
    :cond_10
    if-nez v2, :cond_11

    .line 421
    .line 422
    goto :goto_8

    .line 423
    :cond_11
    iget-object v4, v1, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    .line 424
    .line 425
    if-nez v4, :cond_12

    .line 426
    .line 427
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    invoke-virtual {v4}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    iput-object v4, v1, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    .line 436
    .line 437
    :cond_12
    iget-object v4, v1, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    .line 438
    .line 439
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    const v7, 0x1070114

    .line 444
    .line 445
    .line 446
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    if-eqz v4, :cond_14

    .line 451
    .line 452
    invoke-virtual {v2}, Landroid/view/DisplayAddress$Physical;->getPort()I

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    array-length v7, v4

    .line 457
    :goto_7
    if-ge v8, v7, :cond_14

    .line 458
    .line 459
    aget v10, v4, v8

    .line 460
    .line 461
    if-ne v10, v2, :cond_13

    .line 462
    .line 463
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 464
    .line 465
    iget v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 466
    .line 467
    or-int/lit8 v4, v4, 0x10

    .line 468
    .line 469
    iput v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 470
    .line 471
    goto :goto_8

    .line 472
    :cond_13
    add-int/lit8 v8, v8, 0x1

    .line 473
    .line 474
    goto :goto_7

    .line 475
    :cond_14
    :goto_8
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 476
    .line 477
    iget-object v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 478
    .line 479
    invoke-static {v3, v2}, Landroid/view/DisplayCutout;->getMaskBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    if-eqz v2, :cond_15

    .line 484
    .line 485
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 486
    .line 487
    iget v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 488
    .line 489
    or-int/lit16 v4, v4, 0x800

    .line 490
    .line 491
    iput v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 492
    .line 493
    :cond_15
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 494
    .line 495
    iget-object v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 496
    .line 497
    invoke-static {v2}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    if-nez v2, :cond_16

    .line 502
    .line 503
    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 504
    .line 505
    iget v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 506
    .line 507
    goto :goto_9

    .line 508
    :cond_16
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 509
    .line 510
    .line 511
    move-result v4

    .line 512
    :goto_9
    if-nez v2, :cond_17

    .line 513
    .line 514
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 515
    .line 516
    iget v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 517
    .line 518
    goto :goto_a

    .line 519
    :cond_17
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 520
    .line 521
    .line 522
    move-result v2

    .line 523
    :goto_a
    iget-object v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    .line 524
    .line 525
    iget-boolean v7, v7, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    .line 526
    .line 527
    if-eqz v7, :cond_19

    .line 528
    .line 529
    if-nez v9, :cond_18

    .line 530
    .line 531
    goto :goto_b

    .line 532
    :cond_18
    iget-object v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 533
    .line 534
    iget-object v13, v7, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 535
    .line 536
    iget v8, v7, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 537
    .line 538
    iget v9, v7, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 539
    .line 540
    iget v10, v7, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 541
    .line 542
    const/16 v19, 0x0

    .line 543
    .line 544
    move-object v12, v3

    .line 545
    move v14, v4

    .line 546
    move v15, v2

    .line 547
    move/from16 v16, v8

    .line 548
    .line 549
    move/from16 v17, v9

    .line 550
    .line 551
    move/from16 v18, v10

    .line 552
    .line 553
    invoke-static/range {v12 .. v19}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;Ljava/lang/String;IIIIIZ)Landroid/view/DisplayCutout;

    .line 554
    .line 555
    .line 556
    move-result-object v8

    .line 557
    iput-object v8, v7, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 558
    .line 559
    :goto_b
    new-instance v7, Landroid/util/DisplayMetrics;

    .line 560
    .line 561
    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 565
    .line 566
    .line 567
    move-result-object v8

    .line 568
    invoke-virtual {v7, v8}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 569
    .line 570
    .line 571
    iget-object v8, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 572
    .line 573
    iget v9, v8, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 574
    .line 575
    int-to-float v9, v9

    .line 576
    const/high16 v10, 0x43200000    # 160.0f

    .line 577
    .line 578
    div-float/2addr v9, v10

    .line 579
    iput v9, v7, Landroid/util/DisplayMetrics;->density:F

    .line 580
    .line 581
    iget-object v13, v8, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 582
    .line 583
    iget v9, v8, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 584
    .line 585
    iget v10, v8, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 586
    .line 587
    const/16 v19, 0x0

    .line 588
    .line 589
    move-object v12, v3

    .line 590
    move v14, v4

    .line 591
    move v15, v2

    .line 592
    move/from16 v16, v9

    .line 593
    .line 594
    move/from16 v17, v10

    .line 595
    .line 596
    move-object/from16 v18, v7

    .line 597
    .line 598
    invoke-static/range {v12 .. v19}, Landroid/view/RoundedCorners;->fromCustomResources(Landroid/content/res/Resources;Ljava/lang/String;IIIILandroid/util/DisplayMetrics;Z)Landroid/view/RoundedCorners;

    .line 599
    .line 600
    .line 601
    move-result-object v7

    .line 602
    iput-object v7, v8, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 603
    .line 604
    :cond_19
    iget-object v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 605
    .line 606
    iget-object v8, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    .line 607
    .line 608
    iget v8, v8, Landroid/view/SurfaceControl$StaticDisplayInfo;->installOrientation:I

    .line 609
    .line 610
    iput v8, v7, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    .line 611
    .line 612
    iget-object v13, v7, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 613
    .line 614
    iget v8, v7, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 615
    .line 616
    iget v9, v7, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 617
    .line 618
    move-object v12, v3

    .line 619
    move v14, v4

    .line 620
    move v15, v2

    .line 621
    move/from16 v16, v8

    .line 622
    .line 623
    move/from16 v17, v9

    .line 624
    .line 625
    invoke-static/range {v12 .. v17}, Landroid/view/DisplayShape;->fromResources(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/DisplayShape;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    iput-object v2, v7, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    .line 630
    .line 631
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 632
    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 634
    .line 635
    .line 636
    move-result-object v4

    .line 637
    iget-object v4, v4, Lcom/android/server/display/DisplayDeviceConfig;->mName:Ljava/lang/String;

    .line 638
    .line 639
    iput-object v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 640
    .line 641
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    .line 642
    .line 643
    iget-boolean v2, v2, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    .line 644
    .line 645
    if-eqz v2, :cond_1a

    .line 646
    .line 647
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 648
    .line 649
    iput v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 650
    .line 651
    iput v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 652
    .line 653
    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 654
    .line 655
    or-int/2addr v2, v6

    .line 656
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 657
    .line 658
    iget-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 659
    .line 660
    if-nez v2, :cond_1b

    .line 661
    .line 662
    const v2, 0x1040486

    .line 663
    .line 664
    .line 665
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 670
    .line 671
    goto :goto_c

    .line 672
    :cond_1a
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 673
    .line 674
    iput v6, v2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 675
    .line 676
    iput v6, v2, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 677
    .line 678
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 679
    .line 680
    or-int/lit8 v3, v3, 0x40

    .line 681
    .line 682
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 683
    .line 684
    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 685
    .line 686
    if-nez v3, :cond_1b

    .line 687
    .line 688
    iget-object v1, v1, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 689
    .line 690
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    const v3, 0x1040487

    .line 695
    .line 696
    .line 697
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    iput-object v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 702
    .line 703
    :cond_1b
    :goto_c
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 704
    .line 705
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 706
    .line 707
    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 708
    .line 709
    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 710
    .line 711
    or-int/lit16 v2, v2, 0x2000

    .line 712
    .line 713
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 714
    .line 715
    const/high16 v2, 0x3f800000    # 1.0f

    .line 716
    .line 717
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    .line 718
    .line 719
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 720
    .line 721
    .line 722
    move-result-object v2

    .line 723
    iget v2, v2, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 724
    .line 725
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    .line 726
    .line 727
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 728
    .line 729
    iget v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCurrentHdrSdrRatio:F

    .line 730
    .line 731
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    .line 732
    .line 733
    :cond_1c
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 734
    .line 735
    return-object v0
.end method

.method public final getSystemPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMode(I)Landroid/view/Display$Mode;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getUserPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasStableUniqueId()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isFirstDisplay()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    .line 2
    .line 3
    return p0
.end method

.method public final onActiveDisplayModeChangedLocked(FI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 2
    .line 3
    iget v0, v0, Landroid/view/SurfaceControl$DisplayMode;->id:I

    .line 4
    .line 5
    if-ne v0, p2, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    .line 8
    .line 9
    cmpl-float v0, v0, p1

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    .line 15
    .line 16
    invoke-static {v0, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 21
    .line 22
    invoke-virtual {p0, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 27
    .line 28
    const/4 v1, -0x1

    .line 29
    const-string v2, "LocalDisplayAdapter"

    .line 30
    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "In unknown mode after setting allowed modes, activeModeId="

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {v2, p2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 52
    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string/jumbo v0, "updateActiveModeLocked for d="

    .line 58
    .line 59
    .line 60
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-wide v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 64
    .line 65
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", mActiveModeId="

    .line 69
    .line 70
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 74
    .line 75
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, ", mActiveSfDisplayMode="

    .line 79
    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 84
    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-static {v2, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_0
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_RESOLUTION_POLICY:Z

    .line 96
    .line 97
    if-eqz p2, :cond_3

    .line 98
    .line 99
    iget-boolean p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    .line 100
    .line 101
    if-eqz p2, :cond_3

    .line 102
    .line 103
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 104
    .line 105
    if-eqz p2, :cond_3

    .line 106
    .line 107
    iget v0, p2, Landroid/view/SurfaceControl$DisplayMode;->width:I

    .line 108
    .line 109
    iget p2, p2, Landroid/view/SurfaceControl$DisplayMode;->height:I

    .line 110
    .line 111
    mul-int/2addr v0, p2

    .line 112
    iget p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mLastResolution:I

    .line 113
    .line 114
    if-eq p2, v0, :cond_3

    .line 115
    .line 116
    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mLastResolution:I

    .line 117
    .line 118
    const/4 p2, 0x1

    .line 119
    iput-boolean p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 120
    .line 121
    const-string p2, "Reset modespecs due to resolution change!"

    .line 122
    .line 123
    invoke-static {v2, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    :cond_3
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 129
    .line 130
    .line 131
    :goto_1
    return-void
.end method

.method public final onOverlayChangedLocked()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;)Ljava/lang/Runnable;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;ILjava/util/ArrayList;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public final requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;ILjava/util/ArrayList;)Ljava/lang/Runnable;
    .locals 17

    move-object/from16 v1, p0

    move/from16 v13, p1

    move/from16 v4, p5

    .line 2
    iget v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v13, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    .line 3
    :goto_0
    iget v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_2

    iget v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSdrBrightnessState:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v9, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v9, v3

    .line 4
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 5
    iget v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStateOverride:I

    if-eq v0, v4, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_3
    if-nez v5, :cond_5

    if-nez v9, :cond_5

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_5
    :goto_4
    iget-object v15, v1, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 7
    iget v12, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 8
    iget-object v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v2, v3, :cond_7

    .line 9
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    :goto_5
    move v7, v0

    goto :goto_6

    :cond_6
    move v7, v3

    goto :goto_6

    :cond_7
    const/4 v0, -0x1

    goto :goto_5

    :goto_6
    if-eqz v5, :cond_8

    .line 10
    iput v13, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    :cond_8
    if-eqz v6, :cond_9

    .line 12
    iput v4, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStateOverride:I

    .line 13
    :cond_9
    new-instance v16, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;

    iget-wide v10, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v2, v5

    move v3, v6

    move/from16 v4, p5

    move-object/from16 v5, p6

    move v6, v7

    move-wide v7, v10

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v13, p1

    move-object/from16 v14, p4

    invoke-direct/range {v0 .. v15}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;ZZILjava/util/ArrayList;IJZFFIILcom/android/server/display/DisplayOffloadSessionImpl;Landroid/os/IBinder;)V

    return-object v16
.end method

.method public final setAutoLowLatencyModeLocked(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string p0, "LocalDisplayAdapter"

    .line 13
    .line 14
    const-string p1, "Unable to set ALLM because the connected display does not support ALLM."

    .line 15
    .line 16
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->setAutoLowLatencyMode(Landroid/os/IBinder;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .locals 10

    .line 1
    iget v0, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-gez v3, :cond_2

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "Ignoring request for invalid base mode id "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "LocalDisplayAdapter"

    .line 31
    .line 32
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget p1, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    if-ne p1, v0, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_5

    .line 60
    .line 61
    :cond_3
    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget v0, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 68
    .line 69
    iput v0, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 70
    .line 71
    iget-boolean v0, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    .line 72
    .line 73
    iput-boolean v0, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    .line 74
    .line 75
    iget-object v0, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->primary:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 76
    .line 77
    iget-object v2, v0, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 78
    .line 79
    iget-object v4, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->primary:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 80
    .line 81
    iget-object v5, v4, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 82
    .line 83
    iget v6, v5, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 84
    .line 85
    iput v6, v2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 86
    .line 87
    iget v5, v5, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 88
    .line 89
    iput v5, v2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 90
    .line 91
    iget-object v0, v0, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 92
    .line 93
    iget-object v2, v4, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 94
    .line 95
    iget v4, v2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 96
    .line 97
    iput v4, v0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 98
    .line 99
    iget v2, v2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 100
    .line 101
    iput v2, v0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 102
    .line 103
    iget-object v0, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequest:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 104
    .line 105
    iget-object v2, v0, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 106
    .line 107
    iget-object v4, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequest:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 108
    .line 109
    iget-object v5, v4, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 110
    .line 111
    iget v6, v5, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 112
    .line 113
    iput v6, v2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 114
    .line 115
    iget v5, v5, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 116
    .line 117
    iput v5, v2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 118
    .line 119
    iget-object v0, v0, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 120
    .line 121
    iget-object v2, v4, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 122
    .line 123
    iget v4, v2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 124
    .line 125
    iput v4, v0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 126
    .line 127
    iget v2, v2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 128
    .line 129
    iput v2, v0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 130
    .line 131
    iget-object v0, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 132
    .line 133
    if-nez v0, :cond_4

    .line 134
    .line 135
    const/4 p1, 0x0

    .line 136
    iput-object p1, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_4
    new-instance v0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 140
    .line 141
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 142
    .line 143
    iget p1, p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    .line 144
    .line 145
    invoke-direct {v0, p1}, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;-><init>(I)V

    .line 146
    .line 147
    .line 148
    iput-object v0, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 149
    .line 150
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 151
    .line 152
    iget-object p1, p1, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 153
    .line 154
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;

    .line 155
    .line 156
    const/4 v2, 0x0

    .line 157
    invoke-direct {v0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;-><init>(I)V

    .line 158
    .line 159
    .line 160
    iget-object v8, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 161
    .line 162
    new-instance v9, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 163
    .line 164
    iget-boolean v4, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    .line 165
    .line 166
    iget-object v5, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->primary:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 167
    .line 168
    iget-object v6, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequest:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 169
    .line 170
    iget-object v7, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 171
    .line 172
    move-object v2, v9

    .line 173
    invoke-direct/range {v2 .. v7}, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;-><init>(IZLandroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v0, p0, v8, v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 181
    .line 182
    .line 183
    :cond_5
    return-void
.end method

.method public final setGameContentTypeLocked(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->setGameContentType(Landroid/os/IBinder;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setRequestedColorModeLocked(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v0, "Unable to find color mode "

    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, ", ignoring request."

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "LocalDisplayAdapter"

    .line 38
    .line 39
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 48
    .line 49
    new-instance v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-direct {v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;-><init>(I)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method

.method public final setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 8
    .line 9
    :goto_0
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    .line 14
    .line 15
    if-eq v2, v1, :cond_1

    .line 16
    .line 17
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 18
    .line 19
    :cond_1
    if-eqz p1, :cond_5

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/Display$Mode;->isRefreshRateSet()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/Display$Mode;->isResolutionSet()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_5

    .line 32
    .line 33
    :cond_2
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const/4 v4, 0x0

    .line 46
    :goto_1
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-ge v4, v5, :cond_4

    .line 53
    .line 54
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 61
    .line 62
    iget-object v5, v5, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 63
    .line 64
    invoke-virtual {v5, v2, v3, p1}, Landroid/view/Display$Mode;->matchesIfValid(IIF)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_3

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    const/4 v5, 0x0

    .line 75
    :goto_2
    if-eqz v5, :cond_5

    .line 76
    .line 77
    iput-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 78
    .line 79
    :cond_5
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findUserPreferredModeIdLocked(Landroid/view/Display$Mode;)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 86
    .line 87
    if-eq p1, v1, :cond_6

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_6
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 91
    .line 92
    :goto_3
    if-ne v0, p1, :cond_7

    .line 93
    .line 94
    return-void

    .line 95
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 99
    .line 100
    iget-boolean v0, p1, Lcom/android/server/display/LocalDisplayAdapter;->mIsBootDisplayModeSupported:Z

    .line 101
    .line 102
    if-nez v0, :cond_8

    .line 103
    .line 104
    return-void

    .line 105
    :cond_8
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 106
    .line 107
    iget-object p1, p1, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 108
    .line 109
    if-ne v0, v1, :cond_9

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-static {p0}, Landroid/view/SurfaceControl;->clearBootDisplayMode(Landroid/os/IBinder;)V

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 127
    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-static {p0, v0}, Landroid/view/SurfaceControl;->setBootDisplayMode(Landroid/os/IBinder;I)V

    .line 138
    .line 139
    .line 140
    :goto_4
    return-void
.end method

.method public final updateDeviceInfoLocked()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final updateDisplayInfoForFrameRateOverride(ILandroid/view/DisplayInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 4
    .line 5
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {v0, p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-wide v0, p0, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    .line 16
    .line 17
    iput-wide v0, p2, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 18
    .line 19
    iget-wide p0, p0, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    .line 20
    .line 21
    iput-wide p0, p2, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final updateDisplayPropertiesLocked(Landroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .locals 20

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    .line 10
    .line 11
    iget v5, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->preferredBootDisplayMode:I

    .line 12
    .line 13
    iget v6, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    .line 14
    .line 15
    iget v7, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->renderFrameRate:F

    .line 16
    .line 17
    array-length v8, v4

    .line 18
    invoke-static {v4, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    check-cast v8, [Landroid/view/SurfaceControl$DisplayMode;

    .line 23
    .line 24
    iput-object v8, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    .line 25
    .line 26
    invoke-static {v4, v6}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    iput-object v6, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 31
    .line 32
    invoke-static {v4, v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    new-instance v8, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    const/4 v11, 0x0

    .line 43
    :goto_0
    array-length v12, v4

    .line 44
    iget-object v15, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 45
    .line 46
    if-ge v10, v12, :cond_8

    .line 47
    .line 48
    aget-object v12, v4, v10

    .line 49
    .line 50
    new-instance v14, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    :goto_1
    array-length v13, v4

    .line 57
    if-ge v9, v13, :cond_1

    .line 58
    .line 59
    aget-object v13, v4, v9

    .line 60
    .line 61
    move-object/from16 v18, v4

    .line 62
    .line 63
    if-eq v9, v10, :cond_0

    .line 64
    .line 65
    iget v4, v13, Landroid/view/SurfaceControl$DisplayMode;->width:I

    .line 66
    .line 67
    iget v2, v12, Landroid/view/SurfaceControl$DisplayMode;->width:I

    .line 68
    .line 69
    if-ne v4, v2, :cond_0

    .line 70
    .line 71
    iget v2, v13, Landroid/view/SurfaceControl$DisplayMode;->height:I

    .line 72
    .line 73
    iget v4, v12, Landroid/view/SurfaceControl$DisplayMode;->height:I

    .line 74
    .line 75
    if-ne v2, v4, :cond_0

    .line 76
    .line 77
    iget v2, v13, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    .line 78
    .line 79
    iget v4, v12, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    .line 80
    .line 81
    cmpl-float v4, v2, v4

    .line 82
    .line 83
    if-eqz v4, :cond_0

    .line 84
    .line 85
    iget v4, v13, Landroid/view/SurfaceControl$DisplayMode;->group:I

    .line 86
    .line 87
    iget v13, v12, Landroid/view/SurfaceControl$DisplayMode;->group:I

    .line 88
    .line 89
    if-ne v4, v13, :cond_0

    .line 90
    .line 91
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 99
    .line 100
    move-object/from16 v2, p2

    .line 101
    .line 102
    move-object/from16 v4, v18

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    move-object/from16 v18, v4

    .line 106
    .line 107
    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_3

    .line 119
    .line 120
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 125
    .line 126
    invoke-virtual {v4, v12}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    if-eqz v9, :cond_2

    .line 131
    .line 132
    iget-object v4, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 133
    .line 134
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {v14, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->refreshRatesEquals(Ljava/util/List;[F)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_2

    .line 143
    .line 144
    goto/16 :goto_6

    .line 145
    .line 146
    :cond_3
    const/4 v2, 0x0

    .line 147
    :goto_2
    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 148
    .line 149
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-ge v2, v4, :cond_5

    .line 154
    .line 155
    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 156
    .line 157
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 162
    .line 163
    invoke-virtual {v4, v12}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    if-eqz v9, :cond_4

    .line 168
    .line 169
    iget-object v9, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 170
    .line 171
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    invoke-static {v14, v9}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->refreshRatesEquals(Ljava/util/List;[F)Z

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    if-eqz v9, :cond_4

    .line 180
    .line 181
    iget-object v9, v12, Landroid/view/SurfaceControl$DisplayMode;->supportedHdrTypes:[I

    .line 182
    .line 183
    iget-object v13, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 184
    .line 185
    invoke-virtual {v13}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    .line 186
    .line 187
    .line 188
    move-result-object v13

    .line 189
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    move-object/from16 v19, v4

    .line 193
    .line 194
    array-length v4, v9

    .line 195
    invoke-static {v9, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 200
    .line 201
    .line 202
    invoke-static {v4, v13}, Ljava/util/Arrays;->equals([I[I)Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eqz v4, :cond_4

    .line 207
    .line 208
    move-object/from16 v16, v19

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_5
    const/16 v16, 0x0

    .line 215
    .line 216
    :goto_3
    if-nez v16, :cond_7

    .line 217
    .line 218
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    new-array v4, v2, [F

    .line 223
    .line 224
    const/4 v9, 0x0

    .line 225
    :goto_4
    if-ge v9, v2, :cond_6

    .line 226
    .line 227
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    check-cast v11, Ljava/lang/Float;

    .line 232
    .line 233
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 234
    .line 235
    .line 236
    move-result v11

    .line 237
    aput v11, v4, v9

    .line 238
    .line 239
    add-int/lit8 v9, v9, 0x1

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_6
    new-instance v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 243
    .line 244
    invoke-direct {v2, v12, v4}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;-><init>(Landroid/view/SurfaceControl$DisplayMode;[F)V

    .line 245
    .line 246
    .line 247
    const/4 v11, 0x1

    .line 248
    goto :goto_5

    .line 249
    :cond_7
    move-object/from16 v2, v16

    .line 250
    .line 251
    :goto_5
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    :goto_6
    add-int/lit8 v10, v10, 0x1

    .line 255
    .line 256
    move-object/from16 v2, p2

    .line 257
    .line 258
    move-object/from16 v4, v18

    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-eqz v4, :cond_a

    .line 271
    .line 272
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    check-cast v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 277
    .line 278
    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 279
    .line 280
    invoke-virtual {v4, v9}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    .line 281
    .line 282
    .line 283
    move-result v9

    .line 284
    if-eqz v9, :cond_9

    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_a
    const/4 v4, 0x0

    .line 288
    :goto_7
    const/4 v2, -0x1

    .line 289
    if-eq v5, v2, :cond_d

    .line 290
    .line 291
    if-eqz v6, :cond_d

    .line 292
    .line 293
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    if-eqz v9, :cond_c

    .line 302
    .line 303
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v9

    .line 307
    check-cast v9, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 308
    .line 309
    invoke-virtual {v9, v6}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    .line 310
    .line 311
    .line 312
    move-result v10

    .line 313
    if-eqz v10, :cond_b

    .line 314
    .line 315
    move-object v14, v9

    .line 316
    goto :goto_8

    .line 317
    :cond_c
    const/4 v14, 0x0

    .line 318
    :goto_8
    if-eqz v14, :cond_d

    .line 319
    .line 320
    iget-object v5, v14, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 321
    .line 322
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    .line 323
    .line 324
    .line 325
    move-result v5

    .line 326
    iget-boolean v6, v15, Lcom/android/server/display/LocalDisplayAdapter;->mIsBootDisplayModeSupported:Z

    .line 327
    .line 328
    if-eqz v6, :cond_d

    .line 329
    .line 330
    iget v6, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    .line 331
    .line 332
    if-eq v6, v5, :cond_d

    .line 333
    .line 334
    iput v5, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    .line 335
    .line 336
    const/4 v5, 0x1

    .line 337
    goto :goto_9

    .line 338
    :cond_d
    const/4 v5, 0x0

    .line 339
    :goto_9
    iget v6, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 340
    .line 341
    const-string v9, "LocalDisplayAdapter"

    .line 342
    .line 343
    if-eq v6, v2, :cond_e

    .line 344
    .line 345
    iget-object v10, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 346
    .line 347
    invoke-virtual {v10}, Landroid/view/Display$Mode;->getModeId()I

    .line 348
    .line 349
    .line 350
    move-result v10

    .line 351
    if-eq v6, v10, :cond_e

    .line 352
    .line 353
    new-instance v6, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    const-string v10, "The active mode was changed from SurfaceFlinger or the display device to "

    .line 356
    .line 357
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    iget-object v10, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 361
    .line 362
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v6

    .line 369
    invoke-static {v9, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    iget-object v6, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 373
    .line 374
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getModeId()I

    .line 375
    .line 376
    .line 377
    move-result v6

    .line 378
    iput v6, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 379
    .line 380
    invoke-virtual {v15}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    .line 381
    .line 382
    .line 383
    const/4 v6, 0x1

    .line 384
    goto :goto_a

    .line 385
    :cond_e
    const/4 v6, 0x0

    .line 386
    :goto_a
    iget v10, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    .line 387
    .line 388
    const/4 v12, 0x0

    .line 389
    cmpl-float v12, v10, v12

    .line 390
    .line 391
    if-lez v12, :cond_f

    .line 392
    .line 393
    cmpl-float v10, v10, v7

    .line 394
    .line 395
    if-eqz v10, :cond_f

    .line 396
    .line 397
    new-instance v10, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    const-string v12, "The render frame rate was changed from SurfaceFlinger or the display device to "

    .line 400
    .line 401
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v10

    .line 411
    invoke-static {v9, v10}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .line 413
    .line 414
    iput v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    .line 415
    .line 416
    invoke-virtual {v15}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    .line 417
    .line 418
    .line 419
    const/4 v10, 0x1

    .line 420
    goto :goto_b

    .line 421
    :cond_f
    const/4 v10, 0x0

    .line 422
    :goto_b
    iget-object v12, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 423
    .line 424
    iget v13, v12, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 425
    .line 426
    if-eq v13, v2, :cond_11

    .line 427
    .line 428
    iget v13, v3, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    .line 429
    .line 430
    invoke-virtual {v0, v13}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    .line 431
    .line 432
    .line 433
    move-result v13

    .line 434
    if-eq v13, v2, :cond_10

    .line 435
    .line 436
    iget v14, v12, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 437
    .line 438
    if-ne v14, v13, :cond_10

    .line 439
    .line 440
    iget-object v13, v12, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->primary:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 441
    .line 442
    iget-object v14, v3, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 443
    .line 444
    invoke-virtual {v13, v14}, Landroid/view/SurfaceControl$RefreshRateRanges;->equals(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    move-result v13

    .line 448
    if-eqz v13, :cond_10

    .line 449
    .line 450
    iget-object v13, v12, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequest:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 451
    .line 452
    iget-object v3, v3, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 453
    .line 454
    invoke-virtual {v13, v3}, Landroid/view/SurfaceControl$RefreshRateRanges;->equals(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    if-nez v3, :cond_11

    .line 459
    .line 460
    :cond_10
    const/4 v3, 0x1

    .line 461
    iput-boolean v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 462
    .line 463
    invoke-virtual {v15}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    .line 464
    .line 465
    .line 466
    :cond_11
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 467
    .line 468
    .line 469
    move-result v3

    .line 470
    iget-object v13, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 471
    .line 472
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    .line 473
    .line 474
    .line 475
    move-result v13

    .line 476
    if-ne v3, v13, :cond_15

    .line 477
    .line 478
    if-eqz v11, :cond_12

    .line 479
    .line 480
    goto :goto_e

    .line 481
    :cond_12
    if-nez v6, :cond_14

    .line 482
    .line 483
    if-nez v5, :cond_14

    .line 484
    .line 485
    if-eqz v10, :cond_13

    .line 486
    .line 487
    goto :goto_c

    .line 488
    :cond_13
    const/4 v2, 0x0

    .line 489
    goto :goto_d

    .line 490
    :cond_14
    :goto_c
    const/4 v2, 0x1

    .line 491
    :goto_d
    move v3, v2

    .line 492
    goto/16 :goto_12

    .line 493
    .line 494
    :cond_15
    :goto_e
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 495
    .line 496
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 504
    .line 505
    .line 506
    move-result v5

    .line 507
    if-eqz v5, :cond_16

    .line 508
    .line 509
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    check-cast v5, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 514
    .line 515
    iget-object v8, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 516
    .line 517
    iget-object v10, v5, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 518
    .line 519
    invoke-virtual {v10}, Landroid/view/Display$Mode;->getModeId()I

    .line 520
    .line 521
    .line 522
    move-result v10

    .line 523
    invoke-virtual {v8, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    goto :goto_f

    .line 527
    :cond_16
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 528
    .line 529
    if-ne v3, v2, :cond_17

    .line 530
    .line 531
    iget-object v3, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 532
    .line 533
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    .line 534
    .line 535
    .line 536
    move-result v3

    .line 537
    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 538
    .line 539
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 540
    .line 541
    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->group:I

    .line 542
    .line 543
    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 544
    .line 545
    iput v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    .line 546
    .line 547
    goto :goto_10

    .line 548
    :cond_17
    if-eqz v11, :cond_18

    .line 549
    .line 550
    if-eqz v6, :cond_18

    .line 551
    .line 552
    const-string v3, "New display modes are added and the active mode has changed, use active mode as default mode."

    .line 553
    .line 554
    invoke-static {v9, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    .line 556
    .line 557
    iget-object v3, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 558
    .line 559
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    .line 560
    .line 561
    .line 562
    move-result v3

    .line 563
    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 564
    .line 565
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 566
    .line 567
    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->group:I

    .line 568
    .line 569
    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 570
    .line 571
    iput v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    .line 572
    .line 573
    goto :goto_10

    .line 574
    :cond_18
    iget v5, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 575
    .line 576
    invoke-virtual {v0, v3, v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    .line 577
    .line 578
    .line 579
    move-result v3

    .line 580
    if-gez v3, :cond_19

    .line 581
    .line 582
    const-string v3, "Default display mode no longer available, using currently active mode as default."

    .line 583
    .line 584
    invoke-static {v9, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    .line 586
    .line 587
    iget-object v3, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 588
    .line 589
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    .line 590
    .line 591
    .line 592
    move-result v3

    .line 593
    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 594
    .line 595
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 596
    .line 597
    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->group:I

    .line 598
    .line 599
    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 600
    .line 601
    iput v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    .line 602
    .line 603
    :cond_19
    :goto_10
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 604
    .line 605
    iget v5, v12, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 606
    .line 607
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 608
    .line 609
    .line 610
    move-result v3

    .line 611
    if-gez v3, :cond_1b

    .line 612
    .line 613
    iget v3, v12, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 614
    .line 615
    if-eq v3, v2, :cond_1a

    .line 616
    .line 617
    const-string v3, "DisplayModeSpecs base mode no longer available, using currently active mode."

    .line 618
    .line 619
    invoke-static {v9, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    .line 621
    .line 622
    :cond_1a
    iget-object v3, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 623
    .line 624
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    .line 625
    .line 626
    .line 627
    move-result v3

    .line 628
    iput v3, v12, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 629
    .line 630
    const/4 v3, 0x1

    .line 631
    iput-boolean v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 632
    .line 633
    :cond_1b
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 634
    .line 635
    if-eqz v3, :cond_1c

    .line 636
    .line 637
    invoke-virtual {v0, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findUserPreferredModeIdLocked(Landroid/view/Display$Mode;)I

    .line 638
    .line 639
    .line 640
    move-result v3

    .line 641
    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 642
    .line 643
    :cond_1c
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 644
    .line 645
    iget v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 646
    .line 647
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 648
    .line 649
    .line 650
    move-result v3

    .line 651
    if-gez v3, :cond_1f

    .line 652
    .line 653
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 654
    .line 655
    if-eq v3, v2, :cond_1d

    .line 656
    .line 657
    const-string v3, "Active display mode no longer available, reverting to default mode."

    .line 658
    .line 659
    invoke-static {v9, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    .line 661
    .line 662
    :cond_1d
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 663
    .line 664
    if-eq v3, v2, :cond_1e

    .line 665
    .line 666
    goto :goto_11

    .line 667
    :cond_1e
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 668
    .line 669
    :goto_11
    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 670
    .line 671
    :cond_1f
    invoke-virtual {v15}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    .line 672
    .line 673
    .line 674
    const/4 v3, 0x1

    .line 675
    :goto_12
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    .line 676
    .line 677
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result v2

    .line 681
    if-eqz v2, :cond_20

    .line 682
    .line 683
    const/4 v1, 0x0

    .line 684
    goto :goto_13

    .line 685
    :cond_20
    iput-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    .line 686
    .line 687
    const/4 v1, 0x1

    .line 688
    :goto_13
    or-int/2addr v1, v3

    .line 689
    move-object/from16 v2, p2

    .line 690
    .line 691
    iget-object v3, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedColorModes:[I

    .line 692
    .line 693
    if-nez v3, :cond_22

    .line 694
    .line 695
    :cond_21
    const/4 v3, 0x0

    .line 696
    const/16 v17, 0x0

    .line 697
    .line 698
    goto/16 :goto_16

    .line 699
    .line 700
    :cond_22
    new-instance v4, Ljava/util/ArrayList;

    .line 701
    .line 702
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .line 704
    .line 705
    array-length v5, v3

    .line 706
    const/4 v6, 0x0

    .line 707
    const/4 v7, 0x0

    .line 708
    :goto_14
    if-ge v7, v5, :cond_24

    .line 709
    .line 710
    aget v8, v3, v7

    .line 711
    .line 712
    iget-object v10, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 713
    .line 714
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 715
    .line 716
    .line 717
    move-result-object v11

    .line 718
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    move-result v10

    .line 722
    if-nez v10, :cond_23

    .line 723
    .line 724
    const/4 v6, 0x1

    .line 725
    :cond_23
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 726
    .line 727
    .line 728
    move-result-object v8

    .line 729
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    .line 731
    .line 732
    add-int/lit8 v7, v7, 0x1

    .line 733
    .line 734
    goto :goto_14

    .line 735
    :cond_24
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 736
    .line 737
    .line 738
    move-result v3

    .line 739
    iget-object v5, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 740
    .line 741
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 742
    .line 743
    .line 744
    move-result v5

    .line 745
    if-ne v3, v5, :cond_25

    .line 746
    .line 747
    if-eqz v6, :cond_21

    .line 748
    .line 749
    :cond_25
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 750
    .line 751
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 752
    .line 753
    .line 754
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 755
    .line 756
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 757
    .line 758
    .line 759
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 760
    .line 761
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 762
    .line 763
    .line 764
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 765
    .line 766
    iget v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 767
    .line 768
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 769
    .line 770
    .line 771
    move-result-object v4

    .line 772
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    move-result v3

    .line 776
    if-nez v3, :cond_28

    .line 777
    .line 778
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 779
    .line 780
    if-eqz v3, :cond_26

    .line 781
    .line 782
    const-string v3, "Active color mode no longer available, reverting to default mode."

    .line 783
    .line 784
    invoke-static {v9, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    .line 786
    .line 787
    const/4 v3, 0x0

    .line 788
    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 789
    .line 790
    goto :goto_15

    .line 791
    :cond_26
    const/4 v3, 0x0

    .line 792
    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 793
    .line 794
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 795
    .line 796
    .line 797
    move-result v4

    .line 798
    if-nez v4, :cond_27

    .line 799
    .line 800
    const-string v4, "Default and active color mode is no longer available! Reverting to first available mode."

    .line 801
    .line 802
    invoke-static {v9, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 806
    .line 807
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v4

    .line 811
    check-cast v4, Ljava/lang/Integer;

    .line 812
    .line 813
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 814
    .line 815
    .line 816
    move-result v4

    .line 817
    iput v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 818
    .line 819
    goto :goto_15

    .line 820
    :cond_27
    const-string v4, "No color modes available!"

    .line 821
    .line 822
    invoke-static {v9, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    goto :goto_15

    .line 826
    :cond_28
    const/4 v3, 0x0

    .line 827
    :goto_15
    const/16 v17, 0x1

    .line 828
    .line 829
    :goto_16
    or-int v1, v1, v17

    .line 830
    .line 831
    iget-object v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 832
    .line 833
    iget-object v5, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 834
    .line 835
    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 836
    .line 837
    .line 838
    move-result v5

    .line 839
    if-eqz v5, :cond_29

    .line 840
    .line 841
    move v4, v3

    .line 842
    goto :goto_17

    .line 843
    :cond_29
    iput-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 844
    .line 845
    const/4 v4, 0x1

    .line 846
    :goto_17
    or-int/2addr v1, v4

    .line 847
    iget-boolean v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->autoLowLatencyModeSupported:Z

    .line 848
    .line 849
    iget-boolean v5, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    .line 850
    .line 851
    if-ne v5, v4, :cond_2a

    .line 852
    .line 853
    move v4, v3

    .line 854
    goto :goto_18

    .line 855
    :cond_2a
    iput-boolean v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    .line 856
    .line 857
    const/4 v4, 0x1

    .line 858
    :goto_18
    or-int/2addr v1, v4

    .line 859
    iget-boolean v2, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->gameContentTypeSupported:Z

    .line 860
    .line 861
    iget-boolean v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    .line 862
    .line 863
    if-ne v4, v2, :cond_2b

    .line 864
    .line 865
    move v9, v3

    .line 866
    goto :goto_19

    .line 867
    :cond_2b
    iput-boolean v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    .line 868
    .line 869
    const/4 v9, 0x1

    .line 870
    :goto_19
    or-int/2addr v1, v9

    .line 871
    if-eqz v1, :cond_2c

    .line 872
    .line 873
    const/4 v2, 0x1

    .line 874
    iput-boolean v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 875
    .line 876
    :cond_2c
    return v1
.end method
