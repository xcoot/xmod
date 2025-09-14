.class public final Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;
.super Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mExpiredDeathRecipient:Z

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 3
    invoke-direct {p0}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->mExpiredDeathRecipient:Z

    .line 9
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 6

    .line 1
    const-string/jumbo v0, "binderDied DeathRecipient :"

    .line 4
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 6
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    const-string v2, "MagnificationConnectionManager"

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->mExpiredDeathRecipient:Z

    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->mExpiredDeathRecipient:Z

    .line 30
    if-eqz v0, :cond_0

    .line 32
    monitor-exit v1

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 38
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 40
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IMagnificationConnection;

    .line 42
    invoke-interface {v0}, Landroid/view/accessibility/IMagnificationConnection;->asBinder()Landroid/os/IBinder;

    .line 45
    move-result-object v0

    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 50
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 52
    const/4 v3, 0x0

    .line 53
    iput-object v3, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 55
    iput-object v3, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    .line 57
    const/4 v3, 0x3

    .line 58
    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V

    .line 61
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 63
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 65
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    move v3, v2

    .line 67
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 69
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 72
    move-result v4

    .line 73
    if-ge v3, v4, :cond_1

    .line 75
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 77
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 83
    iput-boolean v2, v4, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    .line 85
    const/4 v5, -0x1

    .line 86
    iput v5, v4, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    .line 88
    iget-object v4, v4, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    .line 90
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 95
    goto :goto_0

    .line 96
    :catchall_1
    move-exception p0

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    return-void

    .line 101
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    :try_start_4
    throw p0

    .line 103
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 104
    throw p0
.end method

.method public final onAccessibilityActionPerformed(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    const-wide/16 v1, 0x100

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 15
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 17
    const-string/jumbo v3, "displayId="

    .line 20
    invoke-static {p1, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    const-string v4, "MagnificationConnectionManagerConnectionCallback.onAccessibilityActionPerformed"

    .line 26
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 31
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 33
    const/4 v0, 0x2

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    .line 37
    return-void
.end method

.method public final onChangeMagnificationMode(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    const-wide/16 v1, 0x100

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 15
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 17
    const-string/jumbo v3, "displayId="

    .line 20
    const-string v4, ";mode="

    .line 22
    invoke-static {p1, p2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    const-string v4, "MagnificationConnectionManagerConnectionCallback.onChangeMagnificationMode"

    .line 28
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 33
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 35
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    .line 40
    return-void
.end method

.method public final onMove(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    const-wide/16 v1, 0x100

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 15
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 17
    const-string/jumbo v3, "displayId="

    .line 20
    invoke-static {p1, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    const-string v4, "MagnificationConnectionManagerConnectionCallback.onMove"

    .line 26
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setTrackingTypingFocusEnabled(IZ)V

    .line 35
    return-void
.end method

.method public final onPerformScaleAction(IFZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    const-wide/16 v1, 0x100

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 15
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v4, "displayId="

    .line 22
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v4, ";scale="

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    const-string v4, ";updatePersistence="

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    const-string v4, "MagnificationConnectionManagerConnectionCallback.onPerformScaleAction"

    .line 50
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 55
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 57
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    .line 64
    move-result v0

    .line 65
    const/high16 v1, 0x3f800000    # 1.0f

    .line 67
    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 78
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 80
    const/4 v8, 0x0

    .line 81
    const/4 v7, 0x0

    .line 82
    move v3, p2

    .line 83
    move v6, p1

    .line 84
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(FFFIILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 87
    if-eqz p3, :cond_4

    .line 89
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 92
    move-result-object p0

    .line 93
    const/4 p2, 0x0

    .line 94
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    .line 97
    move-result p2

    .line 98
    cmpg-float p3, p2, v1

    .line 100
    if-gez p3, :cond_1

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 105
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->putScale(FI)V

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0, p2, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setScale(FI)V

    .line 126
    if-eqz p3, :cond_4

    .line 128
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    .line 135
    move-result p2

    .line 136
    cmpg-float p3, p2, v1

    .line 138
    if-gez p3, :cond_3

    .line 140
    goto :goto_0

    .line 141
    :cond_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 143
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->putScale(FI)V

    .line 146
    :cond_4
    :goto_0
    return-void
.end method

.method public final onSourceBoundsChanged(ILandroid/graphics/Rect;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    const-wide/16 v1, 0x100

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 15
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 17
    const-string v3, "MagnificationConnectionManagerConnectionCallback.onSourceBoundsChanged"

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo v5, "displayId="

    .line 24
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    const-string v5, ";source="

    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 47
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 49
    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 52
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 54
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 60
    if-nez v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    new-instance v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 69
    invoke-direct {v2, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;-><init>(ILcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V

    .line 72
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 74
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    move-object v1, v2

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    .line 83
    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 89
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 91
    const/4 v0, 0x2

    .line 92
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->shouldNotifyMagnificationChange(II)Z

    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 100
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 102
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    .line 109
    move-result v3

    .line 110
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->onUserMagnificationScaleChanged(IIF)V

    .line 113
    new-instance v1, Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 115
    invoke-direct {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    .line 118
    invoke-virtual {v1, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    .line 129
    move-result v1

    .line 130
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setActivated(Z)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    .line 141
    move-result v1

    .line 142
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    .line 149
    move-result v1

    .line 150
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    .line 157
    move-result v1

    .line 158
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    .line 165
    move-result-object v0

    .line 166
    new-instance v1, Landroid/graphics/Region;

    .line 168
    invoke-direct {v1, p2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 171
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 173
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 176
    :cond_2
    return-void

    .line 177
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    throw p0
.end method

.method public final onWindowMagnifierBoundsChanged(ILandroid/graphics/Rect;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    const-wide/16 v1, 0x100

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 15
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 17
    const-string v3, "MagnificationConnectionManagerConnectionCallback.onWindowMagnifierBoundsChanged"

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo v5, "displayId="

    .line 24
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    const-string v5, ";bounds="

    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 47
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 49
    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 52
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 54
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 60
    if-nez v1, :cond_1

    .line 62
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 69
    invoke-direct {v1, p1, p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;-><init>(ILcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V

    .line 72
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 74
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    iget-object p0, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    .line 82
    invoke-virtual {p0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 85
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
