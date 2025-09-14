.class public final Lcom/android/server/wm/WmScreenshotController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCaptureReceiver:Lcom/android/server/wm/WmScreenshotController$3;

.field public final mContext:Landroid/content/Context;

.field public final mFileController:Lcom/android/server/wm/WmScreenshotFileController;

.field public final mHandler:Landroid/os/Handler;

.field public mIsBlockedBySensitiveContents:Z

.field public final mPalmMotionReceiver:Lcom/android/server/wm/WmScreenshotController$3;

.field public mReasonForFailure:I

.field public final mScreenshotConnections:Ljava/util/HashMap;

.field public final mScreenshotLock:Ljava/lang/Object;

.field public mSecuredWindowName:Ljava/lang/String;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mShellCommand:Lcom/android/server/wm/WmScreenshotShellCommand;

.field public final mTakeScreenshotRunnable:Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;

.field public final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/wm/WmScreenshotController;->mIsBlockedBySensitiveContents:Z

    .line 13
    .line 14
    new-instance v1, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/Object;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotLock:Ljava/lang/Object;

    .line 31
    .line 32
    new-instance v1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance v1, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;-><init>(Lcom/android/server/wm/WmScreenshotController;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mTakeScreenshotRunnable:Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;

    .line 45
    .line 46
    new-instance v3, Lcom/android/server/wm/WmScreenshotController$3;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/WmScreenshotController$3;-><init>(Lcom/android/server/wm/WmScreenshotController;I)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/android/server/wm/WmScreenshotController$3;

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/WmScreenshotController$3;-><init>(Lcom/android/server/wm/WmScreenshotController;I)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    iput-object p2, p0, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 61
    .line 62
    new-instance v2, Lcom/android/server/wm/WmScreenshotShellCommand;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    const/16 v4, 0x7df

    .line 68
    .line 69
    iput v4, v2, Lcom/android/server/wm/WmScreenshotShellCommand;->mWindowType:I

    .line 70
    .line 71
    iput v0, v2, Lcom/android/server/wm/WmScreenshotShellCommand;->mDisplayId:I

    .line 72
    .line 73
    iput-boolean v0, v2, Lcom/android/server/wm/WmScreenshotShellCommand;->mScreenshotRotationLayer:Z

    .line 74
    .line 75
    iput-object p2, v2, Lcom/android/server/wm/WmScreenshotShellCommand;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 76
    .line 77
    iput-object p0, v2, Lcom/android/server/wm/WmScreenshotShellCommand;->mController:Lcom/android/server/wm/WmScreenshotController;

    .line 78
    .line 79
    iput-object v2, p0, Lcom/android/server/wm/WmScreenshotController;->mShellCommand:Lcom/android/server/wm/WmScreenshotShellCommand;

    .line 80
    .line 81
    new-instance v0, Lcom/android/server/wm/WmScreenshotFileController;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p2, v0, Lcom/android/server/wm/WmScreenshotFileController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/android/server/wm/WmScreenshotController;->mFileController:Lcom/android/server/wm/WmScreenshotFileController;

    .line 89
    .line 90
    new-instance v5, Landroid/content/IntentFilter;

    .line 91
    .line 92
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string p0, "com.samsung.android.motion.SWEEP_LEFT"

    .line 96
    .line 97
    invoke-virtual {v5, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string p0, "com.samsung.android.motion.SWEEP_RIGHT"

    .line 101
    .line 102
    invoke-virtual {v5, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string p0, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    .line 106
    .line 107
    invoke-virtual {v5, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 111
    .line 112
    const/4 v8, 0x2

    .line 113
    const-string v6, "com.samsung.permission.PALM_MOTION"

    .line 114
    .line 115
    const/4 v7, 0x0

    .line 116
    move-object v2, p1

    .line 117
    move-object v4, p0

    .line 118
    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    const-string p2, "com.samsung.android.capture.ScreenshotExecutor"

    .line 122
    .line 123
    invoke-static {p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    const/4 v10, 0x2

    .line 128
    const-string v8, "com.samsung.permission.CAPTURE"

    .line 129
    .line 130
    const/4 v9, 0x0

    .line 131
    move-object v4, p1

    .line 132
    move-object v5, v1

    .line 133
    move-object v6, p0

    .line 134
    invoke-virtual/range {v4 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public static adjustCropForOneHandOp(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget p0, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->scale(F)V

    .line 19
    .line 20
    .line 21
    iget p0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 22
    .line 23
    float-to-int p0, p0

    .line 24
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 25
    .line 26
    add-int/2addr p0, v1

    .line 27
    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 28
    .line 29
    float-to-int v0, v0

    .line 30
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 31
    .line 32
    add-int/2addr v0, v1

    .line 33
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    .line 38
    .line 39
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 40
    .line 41
    float-to-int v1, v1

    .line 42
    iget v2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 43
    .line 44
    float-to-int v2, v2

    .line 45
    iget v3, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 46
    .line 47
    int-to-float v3, v3

    .line 48
    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 49
    .line 50
    mul-float/2addr v3, v0

    .line 51
    float-to-int v3, v3

    .line 52
    add-int/2addr v3, v1

    .line 53
    iget p0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 54
    .line 55
    int-to-float p0, p0

    .line 56
    mul-float/2addr p0, v0

    .line 57
    float-to-int p0, p0

    .line 58
    add-int/2addr p0, v2

    .line 59
    invoke-direct {p1, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-object p1
.end method

.method public static putCutoutSafeInsets(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 25
    .line 26
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Landroid/view/DisplayCutout;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 45
    .line 46
    const-string/jumbo v1, "safeInsetLeft"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    const-string/jumbo v0, "safeInsetTop"

    .line 53
    .line 54
    .line 55
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 56
    .line 57
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    const-string/jumbo v0, "safeInsetRight"

    .line 61
    .line 62
    .line 63
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 64
    .line 65
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    const-string/jumbo v0, "safeInsetBottom"

    .line 69
    .line 70
    .line 71
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 72
    .line 73
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final failedReasonToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    and-int/lit8 v1, p1, 0x1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, " InvalidDisplay"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    :cond_0
    and-int/lit8 v1, p1, 0x2

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const-string v1, " InvalidSystemWindow"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_1
    and-int/lit8 v1, p1, 0x4

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    const-string v1, " InvalidDefaultTaskDisplayArea"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_2
    and-int/lit8 v1, p1, 0x8

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    const-string v1, " EmptyBitmap"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :cond_3
    and-int/lit8 v1, p1, 0x10

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    const-string v1, " Secureflags:"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mSecuredWindowName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_4
    and-int/lit8 p1, p1, 0x20

    .line 57
    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    const-string p1, " Mdm:"

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController;->mSecuredWindowName:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method public final findTargetSurfaceForSystemWindowTarget(Lcom/android/server/wm/DisplayContent;IZLjava/lang/StringBuilder;)Landroid/view/SurfaceControl;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-array v1, v1, [Z

    .line 4
    .line 5
    aput-boolean v0, v1, v0

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, p2, p3}, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WmScreenshotController;[ZIZ)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget p1, p0, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    .line 19
    .line 20
    or-int/lit8 p1, p1, 0x2

    .line 21
    .line 22
    iput p1, p0, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p2, "[Window_Target:"

    .line 29
    .line 30
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p2, "]"

    .line 41
    .line 42
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 53
    .line 54
    return-object p0
.end method

.method public final invalidateForScreenShot(Lcom/android/server/wm/DisplayContent;Z)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "WindowManager"

    .line 4
    .line 5
    const-string v3, "invalidateForScreenShot, forceMode="

    .line 6
    .line 7
    const-string v4, ", caller="

    .line 8
    .line 9
    invoke-static {v3, v4, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x3

    .line 14
    invoke-static {v4, v3, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "debug.sf.hdr_capture"

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    const-string/jumbo v3, "true"

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v3, "false"

    .line 26
    .line 27
    :goto_0
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-array v2, v0, [Z

    .line 31
    .line 32
    aput-boolean v1, v2, v1

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 39
    .line 40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 41
    .line 42
    .line 43
    monitor-enter v3

    .line 44
    :try_start_0
    new-instance v4, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;

    .line 45
    .line 46
    invoke-direct {v4, p0, p2, v2}, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WmScreenshotController;Z[Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v4, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 50
    .line 51
    .line 52
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 54
    .line 55
    .line 56
    aget-boolean p0, v2, v1

    .line 57
    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    :try_start_1
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    .line 63
    .line 64
    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 68
    .line 69
    const-wide/16 v3, 0x32

    .line 70
    .line 71
    invoke-virtual {p0, v3, v4, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception p0

    .line 76
    const-string p1, "WindowManager"

    .line 77
    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v0, "InterruptedException "

    .line 81
    .line 82
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_1
    :goto_1
    const-string p0, "WindowManager"

    .line 107
    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string p2, "invalidateForScreenShot, invalidateRequested="

    .line 111
    .line 112
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    aget-boolean p2, v2, v1

    .line 116
    .line 117
    invoke-static {p0, p1, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 118
    .line 119
    .line 120
    aget-boolean p0, v2, v1

    .line 121
    .line 122
    return p0
.end method

.method public final isScreenshotAllowedByPolicy(Lcom/android/server/wm/DisplayContent;)Z
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSensitiveContentPackages:Lcom/android/server/wm/SensitiveContentPackages;

    .line 18
    .line 19
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 20
    .line 21
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 22
    .line 23
    iget v3, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 24
    .line 25
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 26
    .line 27
    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/wm/SensitiveContentPackages;->shouldBlockScreenCaptureForApp(ILandroid/os/IBinder;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/android/server/wm/WmScreenshotController;->mIsBlockedBySensitiveContents:Z

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController;->mSecuredWindowName:Ljava/lang/String;

    .line 48
    .line 49
    return v0

    .line 50
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 51
    .line 52
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 53
    .line 54
    and-int/lit16 v0, v0, 0x2000

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget v0, p0, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    .line 59
    .line 60
    or-int/lit8 v0, v0, 0x10

    .line 61
    .line 62
    iput v0, p0, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget v0, p0, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    .line 66
    .line 67
    or-int/lit8 v0, v0, 0x20

    .line 68
    .line 69
    iput v0, p0, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    .line 70
    .line 71
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController;->mSecuredWindowName:Ljava/lang/String;

    .line 80
    .line 81
    const/4 p0, 0x0

    .line 82
    return p0
.end method

.method public final putFocusedWindowInfo(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)Z
    .locals 3

    .line 1
    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    const/4 v0, 0x0

    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 21
    .line 22
    new-instance v2, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda4;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda4;-><init>(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {p2, v2, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    return v0

    .line 40
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 46
    .line 47
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 57
    .line 58
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 59
    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 68
    .line 69
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 70
    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 79
    .line 80
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 81
    .line 82
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    const-string/jumbo p0, "windowCapture"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 104
    .line 105
    .line 106
    return v1
.end method

.method public final putSystemBarHeight(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)V
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerFlags;->mInsetsDecoupledConfiguration:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 12
    .line 13
    iget v2, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 14
    .line 15
    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 16
    .line 17
    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigInsets:Landroid/graphics/Rect;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 27
    .line 28
    iget v2, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 29
    .line 30
    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 31
    .line 32
    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 33
    .line 34
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigInsets:Landroid/graphics/Rect;

    .line 39
    .line 40
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 46
    .line 47
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 48
    .line 49
    const-string/jumbo v1, "statusBarHeight"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 56
    .line 57
    iget p2, p2, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    const-string/jumbo v1, "navigationBarHeight"

    .line 61
    .line 62
    .line 63
    if-eq p2, v0, :cond_2

    .line 64
    .line 65
    const/4 v0, 0x2

    .line 66
    if-eq p2, v0, :cond_1

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 69
    .line 70
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 71
    .line 72
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 77
    .line 78
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 79
    .line 80
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 85
    .line 86
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 87
    .line 88
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    :goto_1
    return-void
.end method

.method public final resetConnection(Landroid/content/ServiceConnection;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Runnable;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final screenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IILandroid/view/SurfaceControl;ZZ)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    new-instance v0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p6}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setUseIdentityTransform(Z)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p2}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 17
    .line 18
    invoke-virtual {p1, p3, p4}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setSize(II)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p5}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setLayer(Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, p7}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$DisplayCaptureArgs;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Landroid/window/ScreenCapture;->captureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 p2, 0x0

    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    move-object p3, p2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    :goto_0
    const-string p4, "WindowManager"

    .line 50
    .line 51
    if-nez p3, :cond_1

    .line 52
    .line 53
    const-string p0, "Failed to take screenshot with sourceCrop"

    .line 54
    .line 55
    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-object p2

    .line 59
    :cond_1
    if-nez p7, :cond_3

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    iget-boolean p1, p0, Lcom/android/server/wm/WmScreenshotController;->mIsBlockedBySensitiveContents:Z

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    const-string p0, "Failed to take screenshot with contains sensitive contents"

    .line 72
    .line 73
    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    return-object p3

    .line 77
    :cond_2
    const-string p1, "Failed to take screenshot with contains secure layers"

    .line 78
    .line 79
    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iget p1, p0, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    .line 83
    .line 84
    or-int/lit8 p1, p1, 0x10

    .line 85
    .line 86
    iput p1, p0, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    .line 87
    .line 88
    return-object p2

    .line 89
    :cond_3
    return-object p3

    .line 90
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string p1, "displayToken must not be null"

    .line 93
    .line 94
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0
.end method

.method public final sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController;->mTakeScreenshotRunnable:Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;->info:Lcom/android/server/wm/WmScreenshotInfo;

    .line 9
    .line 10
    iput p1, v1, Lcom/android/server/wm/WmScreenshotInfo;->mType:I

    .line 11
    .line 12
    iput p2, v1, Lcom/android/server/wm/WmScreenshotInfo;->mSweepDirection:I

    .line 13
    .line 14
    iput p3, v1, Lcom/android/server/wm/WmScreenshotInfo;->mDisplayId:I

    .line 15
    .line 16
    iput p4, v1, Lcom/android/server/wm/WmScreenshotInfo;->mOrigin:I

    .line 17
    .line 18
    iput-object p5, v1, Lcom/android/server/wm/WmScreenshotInfo;->mBundle:Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final takeScreenshotToTargetWindow(IIZLandroid/graphics/Rect;IIZZZ)Lcom/samsung/android/view/ScreenshotResult;
    .locals 17

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move/from16 v1, p2

    .line 6
    .line 7
    move/from16 v2, p3

    .line 8
    .line 9
    move/from16 v8, p8

    .line 10
    .line 11
    const-string/jumbo v3, "takeScreenshotToTargetWindow: targetSurface="

    .line 12
    .line 13
    .line 14
    const-string/jumbo v4, "takeScreenshotToTargetWindow: display="

    .line 15
    .line 16
    .line 17
    const-string v5, ", target="

    .line 18
    .line 19
    const-string v6, ", containsTarget="

    .line 20
    .line 21
    invoke-static {v0, v1, v4, v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v5, ", crop="

    .line 29
    .line 30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v5, ", w="

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v5, ", h="

    .line 46
    .line 47
    const-string v6, ", useIdentityTransform="

    .line 48
    .line 49
    move/from16 v7, p5

    .line 50
    .line 51
    move/from16 v10, p6

    .line 52
    .line 53
    invoke-static {v7, v10, v5, v6, v4}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 54
    .line 55
    .line 56
    const-string v5, ", ignorePolicy="

    .line 57
    .line 58
    const-string v6, ", caller="

    .line 59
    .line 60
    move/from16 v11, p7

    .line 61
    .line 62
    invoke-static {v4, v11, v5, v8, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 v5, 0x3

    .line 66
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v5, "WindowManager"

    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    new-instance v12, Lcom/samsung/android/view/ScreenshotResult$Builder;

    .line 83
    .line 84
    invoke-direct {v12}, Lcom/samsung/android/view/ScreenshotResult$Builder;-><init>()V

    .line 85
    .line 86
    .line 87
    new-instance v13, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    iput v4, v9, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    .line 94
    .line 95
    const-string v5, ""

    .line 96
    .line 97
    iput-object v5, v9, Lcom/android/server/wm/WmScreenshotController;->mSecuredWindowName:Ljava/lang/String;

    .line 98
    .line 99
    iput-boolean v4, v9, Lcom/android/server/wm/WmScreenshotController;->mIsBlockedBySensitiveContents:Z

    .line 100
    .line 101
    const/4 v14, 0x6

    .line 102
    const/4 v15, 0x0

    .line 103
    :try_start_0
    iget-object v4, v9, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 104
    .line 105
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 106
    .line 107
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 108
    .line 109
    .line 110
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    :try_start_1
    iget-object v5, v9, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 112
    .line 113
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 114
    .line 115
    invoke-virtual {v5, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    const/4 v6, 0x1

    .line 120
    if-nez v5, :cond_0

    .line 121
    .line 122
    iget v0, v9, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    .line 123
    .line 124
    or-int/2addr v0, v6

    .line 125
    iput v0, v9, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    .line 126
    .line 127
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 129
    .line 130
    .line 131
    const-string v0, "WindowManager"

    .line 132
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string/jumbo v2, "takeScreenshotToTargetWindow, bitmap=null, failedReason="

    .line 136
    .line 137
    .line 138
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :goto_0
    iget v2, v9, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    .line 142
    .line 143
    invoke-virtual {v9, v2}, Lcom/android/server/wm/WmScreenshotController;->failedReasonToString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v2, ", caller="

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-static {v14}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    invoke-virtual {v12, v15}, Lcom/samsung/android/view/ScreenshotResult$Builder;->setCapturedBitmap(Landroid/graphics/Bitmap;)Lcom/samsung/android/view/ScreenshotResult$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget v1, v9, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Lcom/samsung/android/view/ScreenshotResult$Builder;->setFailedReason(I)Lcom/samsung/android/view/ScreenshotResult$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lcom/samsung/android/view/ScreenshotResult$Builder;->setTargetWindowName(Ljava/lang/String;)Lcom/samsung/android/view/ScreenshotResult$Builder;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iget-object v1, v9, Lcom/android/server/wm/WmScreenshotController;->mSecuredWindowName:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Lcom/samsung/android/view/ScreenshotResult$Builder;->setSecuredWindowName(Ljava/lang/String;)Lcom/samsung/android/view/ScreenshotResult$Builder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v12}, Lcom/samsung/android/view/ScreenshotResult$Builder;->build()Lcom/samsung/android/view/ScreenshotResult;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    return-object v0

    .line 197
    :catchall_0
    move-exception v0

    .line 198
    goto/16 :goto_a

    .line 199
    .line 200
    :cond_0
    if-nez v8, :cond_1

    .line 201
    .line 202
    :try_start_2
    invoke-virtual {v9, v5}, Lcom/android/server/wm/WmScreenshotController;->isScreenshotAllowedByPolicy(Lcom/android/server/wm/DisplayContent;)Z

    .line 203
    .line 204
    .line 205
    move-result v16

    .line 206
    if-nez v16, :cond_1

    .line 207
    .line 208
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 210
    .line 211
    .line 212
    const-string v0, "WindowManager"

    .line 213
    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string/jumbo v2, "takeScreenshotToTargetWindow, bitmap=null, failedReason="

    .line 217
    .line 218
    .line 219
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto :goto_0

    .line 223
    :cond_1
    const/16 v15, 0x7d0

    .line 224
    .line 225
    if-lt v1, v15, :cond_2

    .line 226
    .line 227
    const/16 v15, 0xbb7

    .line 228
    .line 229
    if-gt v1, v15, :cond_2

    .line 230
    .line 231
    :try_start_3
    invoke-virtual {v9, v5, v1, v2, v13}, Lcom/android/server/wm/WmScreenshotController;->findTargetSurfaceForSystemWindowTarget(Lcom/android/server/wm/DisplayContent;IZLjava/lang/StringBuilder;)Landroid/view/SurfaceControl;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    :goto_2
    move-object v15, v1

    .line 236
    goto :goto_4

    .line 237
    :cond_2
    if-lt v1, v6, :cond_5

    .line 238
    .line 239
    const/16 v2, 0x7cf

    .line 240
    .line 241
    if-gt v1, v2, :cond_5

    .line 242
    .line 243
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    if-eqz v1, :cond_4

    .line 248
    .line 249
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 254
    .line 255
    if-nez v1, :cond_3

    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_4
    :goto_3
    iget v1, v9, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    .line 266
    .line 267
    or-int/lit8 v1, v1, 0x4

    .line 268
    .line 269
    iput v1, v9, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    .line 270
    .line 271
    const/4 v1, 0x0

    .line 272
    goto :goto_2

    .line 273
    :cond_5
    const/4 v15, 0x0

    .line 274
    :goto_4
    if-eqz v8, :cond_6

    .line 275
    .line 276
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-eqz v1, :cond_6

    .line 281
    .line 282
    move-object/from16 v1, p4

    .line 283
    .line 284
    invoke-static {v5, v1}, Lcom/android/server/wm/WmScreenshotController;->adjustCropForOneHandOp(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    :goto_5
    move-object v2, v1

    .line 289
    goto :goto_6

    .line 290
    :cond_6
    move-object/from16 v1, p4

    .line 291
    .line 292
    goto :goto_5

    .line 293
    :goto_6
    const-string v1, "WindowManager"

    .line 294
    .line 295
    new-instance v14, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v3, ", sourceCrop="

    .line 304
    .line 305
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_FOR_HDR:Z

    .line 319
    .line 320
    if-eqz v14, :cond_7

    .line 321
    .line 322
    goto :goto_7

    .line 323
    :cond_7
    const/4 v5, 0x0

    .line 324
    :goto_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 325
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 326
    .line 327
    .line 328
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    if-eqz v1, :cond_9

    .line 337
    .line 338
    iget v3, v1, Landroid/view/DisplayInfo;->type:I

    .line 339
    .line 340
    const/4 v4, 0x5

    .line 341
    if-ne v3, v4, :cond_8

    .line 342
    .line 343
    iget-object v1, v9, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 344
    .line 345
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 346
    .line 347
    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerInternal;->getRealDisplayToken(I)Landroid/os/IBinder;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    goto :goto_8

    .line 352
    :catchall_1
    const/4 v15, 0x0

    .line 353
    goto/16 :goto_b

    .line 354
    .line 355
    :cond_8
    iget-object v0, v1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 356
    .line 357
    if-eqz v0, :cond_9

    .line 358
    .line 359
    invoke-static {v0}, Landroid/view/SurfaceControl;->getDisplayToken(Landroid/view/DisplayAddress;)Landroid/os/IBinder;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    goto :goto_8

    .line 364
    :cond_9
    const/4 v0, 0x0

    .line 365
    :goto_8
    if-eqz v14, :cond_a

    .line 366
    .line 367
    if-eqz p9, :cond_a

    .line 368
    .line 369
    invoke-virtual {v9, v5, v6}, Lcom/android/server/wm/WmScreenshotController;->invalidateForScreenShot(Lcom/android/server/wm/DisplayContent;Z)Z

    .line 370
    .line 371
    .line 372
    :cond_a
    move-object/from16 v1, p0

    .line 373
    .line 374
    move-object v3, v2

    .line 375
    move-object v2, v0

    .line 376
    move/from16 v4, p5

    .line 377
    .line 378
    move-object v0, v5

    .line 379
    move/from16 v5, p6

    .line 380
    .line 381
    move-object v6, v15

    .line 382
    move/from16 v7, p7

    .line 383
    .line 384
    move/from16 v8, p8

    .line 385
    .line 386
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/WmScreenshotController;->screenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IILandroid/view/SurfaceControl;ZZ)Landroid/graphics/Bitmap;

    .line 387
    .line 388
    .line 389
    move-result-object v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 390
    if-eqz v14, :cond_b

    .line 391
    .line 392
    if-eqz p9, :cond_b

    .line 393
    .line 394
    :try_start_5
    iget-object v1, v9, Lcom/android/server/wm/WmScreenshotController;->mHandler:Landroid/os/Handler;

    .line 395
    .line 396
    new-instance v2, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda0;

    .line 397
    .line 398
    const/4 v3, 0x0

    .line 399
    invoke-direct {v2, v9, v0, v3}, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WmScreenshotController;Ljava/lang/Object;I)V

    .line 400
    .line 401
    .line 402
    const-wide/16 v3, 0x1f4

    .line 403
    .line 404
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 405
    .line 406
    .line 407
    :cond_b
    if-nez v15, :cond_c

    .line 408
    .line 409
    iget v0, v9, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    .line 410
    .line 411
    or-int/lit8 v0, v0, 0x8

    .line 412
    .line 413
    iput v0, v9, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 414
    .line 415
    :cond_c
    const-string v0, "WindowManager"

    .line 416
    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    const-string/jumbo v2, "takeScreenshotToTargetWindow, bitmap="

    .line 420
    .line 421
    .line 422
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    :goto_9
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    const-string v2, ", failedReason="

    .line 429
    .line 430
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    iget v2, v9, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    .line 434
    .line 435
    invoke-virtual {v9, v2}, Lcom/android/server/wm/WmScreenshotController;->failedReasonToString(I)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    const-string v2, ", caller="

    .line 443
    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    const/4 v2, 0x6

    .line 448
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    goto/16 :goto_1

    .line 453
    .line 454
    :goto_a
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 455
    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 456
    .line 457
    .line 458
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 459
    :catchall_2
    :goto_b
    const-string v0, "WindowManager"

    .line 460
    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    const-string/jumbo v2, "takeScreenshotToTargetWindow, bitmap="

    .line 464
    .line 465
    .line 466
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    goto :goto_9
.end method
