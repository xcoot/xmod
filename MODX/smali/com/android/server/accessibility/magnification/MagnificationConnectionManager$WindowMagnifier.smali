.class public final Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SUM_TIME_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field public final mBounds:Landroid/graphics/Rect;

.field public final mDisplayId:I

.field public mEnabled:Z

.field public mIdOfLastServiceToControl:I

.field public final mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

.field public final mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

.field public mScale:F

.field public final mSourceBounds:Landroid/graphics/Rect;

.field public mTrackingTypingFocusEnabled:Z

.field public volatile mTrackingTypingFocusStartTime:J

.field public volatile mTrackingTypingFocusSumTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 3
    const-string/jumbo v1, "mTrackingTypingFocusSumTime"

    .line 6
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->SUM_TIME_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 12
    return-void
.end method

.method public constructor <init>(ILcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mScale:F

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    .line 10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    .line 17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    .line 22
    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    .line 25
    new-instance v0, Landroid/graphics/PointF;

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 31
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    .line 33
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    .line 36
    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    .line 40
    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusSumTime:J

    .line 42
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mDisplayId:I

    .line 44
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 46
    return-void
.end method


# virtual methods
.method public final disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 9
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 11
    if-nez v0, :cond_1

    .line 13
    const-string p0, "MagnificationConnectionManager"

    .line 15
    const-string/jumbo p1, "mConnectionWrapper is null"

    .line 18
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 24
    const-wide/16 v3, 0x80

    .line 26
    invoke-virtual {v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 29
    move-result v5

    .line 30
    iget v6, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mDisplayId:I

    .line 32
    if-eqz v5, :cond_2

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    .line 36
    const-string/jumbo v7, "displayId="

    .line 39
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v7, ";callback="

    .line 47
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    const-string v7, "MagnificationConnectionWrapper.disableWindowMagnification"

    .line 59
    invoke-virtual {v2, v7, v3, v4, v5}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 62
    :cond_2
    :try_start_0
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IMagnificationConnection;

    .line 64
    if-nez p1, :cond_3

    .line 66
    const/4 p1, 0x0

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    new-instance v3, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper$RemoteAnimationCallback;

    .line 70
    invoke-direct {v3, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper$RemoteAnimationCallback;-><init>(Landroid/view/accessibility/MagnificationAnimationCallback;Lcom/android/server/accessibility/AccessibilityTraceManager;)V

    .line 73
    move-object p1, v3

    .line 74
    :goto_0
    invoke-interface {v0, v6, p1}, Landroid/view/accessibility/IMagnificationConnection;->disableWindowMagnification(ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    .line 79
    const/4 p1, -0x1

    .line 80
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    .line 82
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    .line 84
    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    .line 86
    const-wide/16 v2, 0x0

    .line 88
    cmp-long p1, v0, v2

    .line 90
    if-eqz p1, :cond_4

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 95
    move-result-wide v0

    .line 96
    iget-wide v4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    .line 98
    sub-long/2addr v0, v4

    .line 99
    sget-object p1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->SUM_TIME_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 101
    invoke-virtual {p1, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 104
    iput-wide v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    .line 106
    :cond_4
    const/4 p0, 0x1

    .line 107
    return p0

    .line 108
    :catch_0
    :goto_1
    return v1
.end method

.method public final enableWindowMagnificationInternal(FFFIILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p4

    .line 4
    move-object/from16 v2, p6

    .line 6
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 9
    move-result v3

    .line 10
    if-eqz v3, :cond_0

    .line 12
    iget v3, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mScale:F

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move/from16 v3, p1

    .line 17
    :goto_0
    sget v4, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->MAX_SCALE:F

    .line 19
    const/high16 v4, 0x3f800000    # 1.0f

    .line 21
    sget v5, Lcom/android/internal/accessibility/common/MagnificationConstants;->SCALE_MAX_VALUE:F

    .line 23
    invoke-static {v3, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x1

    .line 28
    if-eqz v1, :cond_2

    .line 30
    if-eq v1, v4, :cond_1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    .line 35
    const/high16 v5, -0x40800000    # -1.0f

    .line 37
    invoke-virtual {v1, v5, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-virtual {v1, v5, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 47
    :goto_1
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    .line 49
    iget v11, v1, Landroid/graphics/PointF;->x:F

    .line 51
    iget v12, v1, Landroid/graphics/PointF;->y:F

    .line 53
    sget-boolean v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->SEC_DEBUG:Z

    .line 55
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 57
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->waitConnectionWithTimeoutIfNeeded()Z

    .line 60
    move-result v5

    .line 61
    if-nez v5, :cond_3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    const-string/jumbo v2, "enableWindowMagnificationInternal mConnectionWrapper is null. mConnectionState="

    .line 68
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    iget v1, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 73
    invoke-static {v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    const-string v1, "MagnificationConnectionManager"

    .line 86
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    goto/16 :goto_4

    .line 91
    :cond_3
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 93
    iget-object v5, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 95
    const-wide/16 v6, 0x80

    .line 97
    invoke-virtual {v5, v6, v7}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 100
    move-result v8

    .line 101
    iget v9, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mDisplayId:I

    .line 103
    if-eqz v8, :cond_4

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    .line 107
    const-string/jumbo v10, "displayId="

    .line 110
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v10, ";scale="

    .line 118
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 124
    const-string v10, ";centerX="

    .line 126
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    move/from16 v10, p2

    .line 131
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 134
    const-string v13, ";centerY="

    .line 136
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    move/from16 v13, p3

    .line 141
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 144
    const-string v14, ";magnificationFrameOffsetRatioX="

    .line 146
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 152
    const-string v14, ";magnificationFrameOffsetRatioY="

    .line 154
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 160
    const-string v14, ";callback="

    .line 162
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v8

    .line 172
    const-string v14, "MagnificationConnectionWrapper.enableWindowMagnification"

    .line 174
    invoke-virtual {v5, v14, v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 177
    goto :goto_2

    .line 178
    :cond_4
    move/from16 v10, p2

    .line 180
    move/from16 v13, p3

    .line 182
    :goto_2
    :try_start_0
    iget-object v6, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IMagnificationConnection;

    .line 184
    if-nez v2, :cond_5

    .line 186
    const/4 v1, 0x0

    .line 187
    goto :goto_3

    .line 188
    :cond_5
    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper$RemoteAnimationCallback;

    .line 190
    invoke-direct {v1, v2, v5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper$RemoteAnimationCallback;-><init>(Landroid/view/accessibility/MagnificationAnimationCallback;Lcom/android/server/accessibility/AccessibilityTraceManager;)V

    .line 193
    :goto_3
    move v7, v9

    .line 194
    move v8, v3

    .line 195
    move/from16 v9, p2

    .line 197
    move/from16 v10, p3

    .line 199
    move-object v13, v1

    .line 200
    invoke-interface/range {v6 .. v13}, Landroid/view/accessibility/IMagnificationConnection;->enableWindowMagnification(IFFFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    iput v3, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mScale:F

    .line 205
    iput-boolean v4, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    .line 207
    move/from16 v1, p5

    .line 209
    iput v1, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    .line 211
    return v4

    .line 212
    :catch_0
    :goto_4
    const/4 v0, 0x0

    .line 213
    return v0
.end method

.method public final move(FF)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 9
    const-wide/16 v2, 0x80

    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 14
    move-result v4

    .line 15
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mDisplayId:I

    .line 17
    if-eqz v4, :cond_0

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo v5, "displayId="

    .line 24
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    const-string v5, ";offsetX="

    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 38
    const-string v5, ";offsetY="

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 50
    const-string v5, "MagnificationConnectionWrapper.moveWindowMagnifier"

    .line 52
    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 55
    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IMagnificationConnection;

    .line 57
    invoke-interface {v0, p0, p1, p2}, Landroid/view/accessibility/IMagnificationConnection;->moveWindowMagnifier(IFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :catch_0
    :cond_1
    return-void
.end method

.method public final setScale(F)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    sget v0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->MAX_SCALE:F

    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    sget v1, Lcom/android/internal/accessibility/common/MagnificationConstants;->SCALE_MAX_VALUE:F

    .line 12
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 15
    move-result v0

    .line 16
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mScale:F

    .line 18
    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 24
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 26
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 28
    if-eqz v1, :cond_2

    .line 30
    iget-object v2, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 32
    const-wide/16 v3, 0x80

    .line 34
    invoke-virtual {v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 37
    move-result v5

    .line 38
    iget v6, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mDisplayId:I

    .line 40
    if-eqz v5, :cond_1

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v7, "displayId="

    .line 47
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v7, ";scale="

    .line 55
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v5

    .line 65
    const-string v7, "MagnificationConnectionWrapper.setScale"

    .line 67
    invoke-virtual {v2, v7, v3, v4, v5}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 70
    :cond_1
    :try_start_0
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IMagnificationConnection;

    .line 72
    invoke-interface {v1, v6, p1}, Landroid/view/accessibility/IMagnificationConnection;->setScaleForWindowMagnification(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mScale:F

    .line 77
    :catch_0
    :cond_2
    return-void
.end method

.method public final setTrackingTypingFocusEnabled(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 3
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mDisplayId:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    .line 8
    move-result v0

    .line 9
    const-wide/16 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 15
    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mDisplayId:I

    .line 17
    iget-object v4, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 19
    monitor-enter v4

    .line 20
    :try_start_0
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 22
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 25
    move-result v0

    .line 26
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-eqz v0, :cond_0

    .line 29
    if-eqz p1, :cond_0

    .line 31
    iget-wide v3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    .line 33
    cmp-long v0, v3, v1

    .line 35
    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 40
    move-result-wide v3

    .line 41
    iput-wide v3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0

    .line 47
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    .line 49
    if-eqz v0, :cond_3

    .line 51
    if-nez p1, :cond_3

    .line 53
    iget-wide v3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    .line 55
    cmp-long v0, v3, v1

    .line 57
    if-nez v0, :cond_1

    .line 59
    iget-wide v3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusSumTime:J

    .line 61
    cmp-long v0, v3, v1

    .line 63
    if-eqz v0, :cond_3

    .line 65
    :cond_1
    iget-wide v3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    .line 67
    cmp-long v0, v3, v1

    .line 69
    if-eqz v0, :cond_2

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 74
    move-result-wide v3

    .line 75
    iget-wide v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    .line 77
    sub-long/2addr v3, v5

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    move-wide v3, v1

    .line 80
    :goto_1
    iget-wide v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusSumTime:J

    .line 82
    add-long/2addr v5, v3

    .line 83
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    invoke-static {v5, v6}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationFollowTypingFocusSession(J)V

    .line 91
    iput-wide v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    .line 93
    iput-wide v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusSumTime:J

    .line 95
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    .line 97
    return-void
.end method
