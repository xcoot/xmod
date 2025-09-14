.class public final Lcom/android/server/accessibility/AccessibilityInputFilter;
.super Landroid/view/InputFilter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# instance fields
.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public mAutoActionController:Lcom/android/server/accessibility/autoaction/AutoActionController;

.field public mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

.field public mCombinedGenericMotionEventSources:I

.field public mCombinedMotionEventObservedSources:I

.field public final mContext:Landroid/content/Context;

.field public mEnabledFeatures:I

.field public final mEventHandler:Landroid/util/SparseArray;

.field public mGenericMotionEventStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;

.field public mInstalled:Z

.field public mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

.field public mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;

.field public final mMagnificationGestureHandler:Landroid/util/SparseArray;

.field public final mMotionEventInjectors:Landroid/util/SparseArray;

.field public final mMouseStreamStates:Landroid/util/SparseArray;

.field public final mPm:Landroid/os/PowerManager;

.field public final mServiceDetectsGestures:Landroid/util/SparseArray;

.field public mTapDuration:Lcom/android/server/accessibility/SamsungTapDuration;

.field public mTouchBlocker:Lcom/android/server/accessibility/SamsungTouchBlocker;

.field public final mTouchExplorer:Landroid/util/SparseArray;

.field public final mTouchScreenStreamStates:Landroid/util/SparseArray;

.field public mUserId:I


# direct methods
.method public static -$$Nest$manyServiceWantsGenericMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/16 v0, 0x1002

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 15
    and-int/lit8 v0, v0, 0x2

    .line 17
    if-eqz v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 23
    move-result p1

    .line 24
    and-int/lit16 p1, p1, -0x100

    .line 26
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCombinedGenericMotionEventSources:I

    .line 28
    and-int/2addr p0, p1

    .line 29
    if-eqz p0, :cond_1

    .line 31
    const/4 v1, 0x1

    .line 32
    :cond_1
    :goto_0
    return v1
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 10
    move-result-object v2

    .line 11
    invoke-direct {p0, v2}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 14
    new-instance v2, Landroid/util/SparseArray;

    .line 16
    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 19
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 21
    new-instance v2, Landroid/util/SparseArray;

    .line 23
    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 26
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 28
    new-instance v2, Landroid/util/SparseArray;

    .line 30
    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 33
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    .line 35
    new-instance v2, Landroid/util/SparseArray;

    .line 37
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 40
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 42
    new-instance v2, Landroid/util/SparseArray;

    .line 44
    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 47
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    .line 49
    new-instance v2, Landroid/util/SparseArray;

    .line 51
    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 54
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    .line 56
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCombinedGenericMotionEventSources:I

    .line 58
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCombinedMotionEventObservedSources:I

    .line 60
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 64
    const-string/jumbo p2, "power"

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/os/PowerManager;

    .line 73
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    .line 75
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 77
    return-void
.end method


# virtual methods
.method public final addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-interface {p2, v0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p2, p0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 18
    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    return-void
.end method

.method public final clearEvents(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final createMagnificationGestureHandler(Landroid/content/Context;I)Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 7
    and-int/lit8 v3, v2, 0x1

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v3, :cond_0

    .line 13
    move v11, v4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v11, v5

    .line 16
    :goto_0
    and-int/lit16 v3, v2, 0x1000

    .line 18
    if-eqz v3, :cond_1

    .line 20
    move v12, v4

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v12, v5

    .line 23
    :goto_1
    and-int/lit8 v2, v2, 0x40

    .line 25
    if-eqz v2, :cond_2

    .line 27
    move v13, v4

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move v13, v5

    .line 30
    :goto_2
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 32
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 34
    monitor-enter v3

    .line 35
    :try_start_0
    iget v4, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 37
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 40
    move-result-object v2

    .line 41
    move/from16 v4, p2

    .line 43
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    .line 46
    move-result v2

    .line 47
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const/4 v3, 0x2

    .line 49
    const/4 v5, 0x0

    .line 50
    if-ne v2, v3, :cond_3

    .line 52
    const/16 v2, 0x7f7

    .line 54
    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    .line 57
    move-result-object v7

    .line 58
    new-instance v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 60
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 62
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 65
    move-result-object v8

    .line 66
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 68
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 70
    iget-object v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 72
    move-object v6, v1

    .line 73
    move/from16 v14, p2

    .line 75
    invoke-direct/range {v6 .. v14}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;ZZZI)V

    .line 78
    goto :goto_3

    .line 79
    :cond_3
    const/16 v2, 0x7eb

    .line 81
    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    .line 84
    move-result-object v7

    .line 85
    new-instance v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;

    .line 87
    invoke-direct {v2, v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 92
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 94
    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 96
    invoke-virtual {v5}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 99
    move-result-object v8

    .line 100
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 102
    iget-object v9, v5, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 104
    iget-object v10, v5, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 106
    new-instance v14, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    .line 108
    iget v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    .line 110
    invoke-direct {v14, v1, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;-><init>(Landroid/content/Context;I)V

    .line 113
    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 116
    move-result-object v18

    .line 117
    new-instance v0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;

    .line 119
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableMagnificationOneFingerPanningGesture()Z

    .line 122
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 127
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 130
    iput-object v1, v0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mCached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    invoke-static {v7}, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->isOneFingerPanningEnabledDefault(Landroid/content/Context;)Z

    .line 135
    move-result v5

    .line 136
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    const/16 v17, 0x0

    .line 141
    move-object v6, v3

    .line 142
    move/from16 v15, p2

    .line 144
    move-object/from16 v16, v2

    .line 146
    move-object/from16 v19, v0

    .line 148
    invoke-direct/range {v6 .. v19}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;ZZZLcom/android/server/accessibility/magnification/WindowMagnificationPromptController;ILcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MagnificationLogger;Landroid/view/ViewConfiguration;Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;)V

    .line 151
    move-object v1, v3

    .line 152
    :goto_3
    return-object v1

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    throw v0
.end method

.method public final disableFeatures()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 13
    :goto_0
    if-ltz v1, :cond_0

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/view/Display;

    .line 21
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeaturesForDisplay(I)V

    .line 28
    add-int/lit8 v1, v1, -0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 33
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 35
    monitor-enter v1

    .line 36
    const/4 v2, 0x0

    .line 37
    :try_start_0
    iput-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjectors:Landroid/util/SparseArray;

    .line 39
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 44
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    .line 47
    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController;->onDestroy()V

    .line 52
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 56
    if-eqz v0, :cond_2

    .line 58
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoActionController:Lcom/android/server/accessibility/autoaction/AutoActionController;

    .line 62
    if-eqz v0, :cond_3

    .line 64
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController;->onDestroy()V

    .line 67
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoActionController:Lcom/android/server/accessibility/autoaction/AutoActionController;

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTapDuration:Lcom/android/server/accessibility/SamsungTapDuration;

    .line 71
    if-eqz v0, :cond_4

    .line 73
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTapDuration;->onDestroy()V

    .line 76
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTapDuration:Lcom/android/server/accessibility/SamsungTapDuration;

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchBlocker:Lcom/android/server/accessibility/SamsungTouchBlocker;

    .line 80
    if-eqz v0, :cond_5

    .line 82
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->onDestroy()V

    .line 85
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchBlocker:Lcom/android/server/accessibility/SamsungTouchBlocker;

    .line 87
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetAllStreamState()V

    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw p0
.end method

.method public final disableFeaturesForDisplay(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/accessibility/MotionEventInjector;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/android/server/accessibility/MotionEventInjector;->onDestroy()V

    .line 14
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 27
    if-eqz v0, :cond_2

    .line 29
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 31
    iget-object v1, v1, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 33
    if-eqz v1, :cond_1

    .line 35
    const/high16 v2, 0x2000000

    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(ILandroid/view/MotionEvent;)V

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 47
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    .line 53
    if-eqz v0, :cond_3

    .line 55
    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->onDestroy()V

    .line 58
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 60
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 65
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 71
    if-eqz v0, :cond_4

    .line 73
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 75
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 78
    :cond_4
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 3
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const-string p1, "A11yInputFilter Info : "

    .line 8
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 11
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 14
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 16
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    .line 19
    move-result-object p1

    .line 20
    const/4 p3, 0x0

    .line 21
    move v0, p3

    .line 22
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v1

    .line 26
    if-ge v0, v1, :cond_8

    .line 28
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/view/Display;

    .line 34
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 37
    move-result v1

    .line 38
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 40
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 46
    if-eqz v2, :cond_7

    .line 48
    const-string v3, "Enabled features of Display ["

    .line 50
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 60
    const-string v1, "] = "

    .line 62
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 65
    new-instance v1, Ljava/util/StringJoiner;

    .line 67
    const-string v3, "]"

    .line 69
    const-string v4, ","

    .line 71
    const-string v5, "["

    .line 73
    invoke-direct {v1, v4, v5, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 76
    :goto_1
    if-eqz v2, :cond_6

    .line 78
    instance-of v3, v2, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    .line 80
    if-eqz v3, :cond_1

    .line 82
    const-string v3, "MagnificationGesture"

    .line 84
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 87
    goto :goto_2

    .line 88
    :cond_1
    instance-of v3, v2, Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 90
    if-eqz v3, :cond_2

    .line 92
    const-string v3, "KeyboardInterceptor"

    .line 94
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    instance-of v3, v2, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 100
    if-eqz v3, :cond_3

    .line 102
    const-string v3, "TouchExplorer"

    .line 104
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    instance-of v3, v2, Lcom/android/server/accessibility/AutoclickController;

    .line 110
    if-eqz v3, :cond_4

    .line 112
    const-string v3, "AutoclickController"

    .line 114
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 117
    goto :goto_2

    .line 118
    :cond_4
    instance-of v3, v2, Lcom/android/server/accessibility/MotionEventInjector;

    .line 120
    if-eqz v3, :cond_5

    .line 122
    const-string v3, "MotionEventInjector"

    .line 124
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 127
    :cond_5
    :goto_2
    invoke-interface {v2}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    .line 130
    move-result-object v2

    .line 131
    goto :goto_1

    .line 132
    :cond_6
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 139
    :cond_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 144
    goto :goto_0

    .line 145
    :cond_8
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    const-string/jumbo v0, "mEnabledFeatures : "

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v0, "0x%08X"

    .line 158
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    move-result-object v1

    .line 164
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 167
    move-result-object v1

    .line 168
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 182
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 184
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 187
    move-result p1

    .line 188
    if-lez p1, :cond_9

    .line 190
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 192
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 198
    :cond_9
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 200
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 203
    move-result p1

    .line 204
    if-lez p1, :cond_a

    .line 206
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 208
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 211
    move-result-object p0

    .line 212
    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :catch_0
    :cond_a
    return-void
.end method

.method public final enableFeatures()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetAllStreamState()V

    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 6
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 16
    :goto_0
    if-ltz v1, :cond_0

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/view/Display;

    .line 24
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeaturesForDisplay(Landroid/view/Display;)V

    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 32
    and-int/lit8 v0, v0, 0x10

    .line 34
    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 38
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    .line 40
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 42
    monitor-enter v2

    .line 43
    :try_start_0
    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjectors:Landroid/util/SparseArray;

    .line 45
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 50
    monitor-exit v2

    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0

    .line 55
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 57
    and-int/lit8 v0, v0, 0x4

    .line 59
    if-eqz v0, :cond_2

    .line 61
    new-instance v0, Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 63
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 65
    const-class v2, Lcom/android/server/policy/WindowManagerPolicy;

    .line 67
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/android/server/policy/WindowManagerPolicy;

    .line 73
    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/KeyboardInterceptor;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/policy/WindowManagerPolicy;)V

    .line 76
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 82
    :cond_2
    return-void
.end method

.method public final enableFeaturesForDisplay(Landroid/view/Display;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 10
    move-result p1

    .line 11
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 13
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 15
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDisplay(I)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 32
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    :cond_1
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 39
    and-int/lit8 v1, v1, 0x8

    .line 41
    if-eqz v1, :cond_3

    .line 43
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    .line 45
    if-nez v1, :cond_2

    .line 47
    new-instance v1, Lcom/android/server/accessibility/AutoclickController;

    .line 49
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 51
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    .line 53
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 55
    iget-object v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 57
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/accessibility/AutoclickController;-><init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityTraceManager;)V

    .line 60
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    .line 64
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 67
    :cond_3
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 69
    and-int/lit8 v1, v1, 0x2

    .line 71
    if-eqz v1, :cond_c

    .line 73
    new-instance v1, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 75
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 77
    new-instance v3, Landroid/os/Handler;

    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 82
    move-result-object v4

    .line 83
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 86
    const/4 v4, 0x0

    .line 87
    invoke-direct {v1, v0, v2, v4, v3}, Lcom/android/server/accessibility/gestures/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/gestures/GestureManifold;Landroid/os/Handler;)V

    .line 90
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 92
    and-int/lit16 v3, v2, 0x80

    .line 94
    const/4 v4, 0x1

    .line 95
    iget-object v5, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 97
    if-eqz v3, :cond_4

    .line 99
    iput-boolean v4, v5, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    .line 101
    :cond_4
    and-int/lit16 v2, v2, 0x100

    .line 103
    if-eqz v2, :cond_5

    .line 105
    iget-boolean v2, v5, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    .line 107
    if-eq v2, v4, :cond_5

    .line 109
    iput-boolean v4, v5, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    .line 111
    iget-object v2, v5, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    .line 113
    iget-object v3, v5, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    .line 115
    check-cast v2, Ljava/util/ArrayList;

    .line 117
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    :cond_5
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 122
    and-int/lit16 v2, v2, 0x200

    .line 124
    if-eqz v2, :cond_6

    .line 126
    iget-boolean v2, v5, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerPassthroughEnabled:Z

    .line 128
    if-eq v2, v4, :cond_6

    .line 130
    iput-boolean v4, v5, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerPassthroughEnabled:Z

    .line 132
    iget-object v2, v5, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    .line 134
    iget-object v3, v5, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerSwipes:Ljava/util/List;

    .line 136
    check-cast v2, Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 141
    iget-object v2, v5, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    .line 143
    iget-object v3, v5, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerSwipes:Ljava/util/List;

    .line 145
    check-cast v2, Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 150
    :cond_6
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 152
    and-int/lit16 v3, v2, 0x400

    .line 154
    if-eqz v3, :cond_7

    .line 156
    iput-boolean v4, v5, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    .line 158
    :cond_7
    and-int/lit8 v3, v2, 0x1

    .line 160
    const/4 v5, 0x0

    .line 161
    if-eqz v3, :cond_8

    .line 163
    move v3, v4

    .line 164
    goto :goto_0

    .line 165
    :cond_8
    move v3, v5

    .line 166
    :goto_0
    and-int/lit8 v2, v2, 0x40

    .line 168
    if-eqz v2, :cond_9

    .line 170
    goto :goto_1

    .line 171
    :cond_9
    move v4, v5

    .line 172
    :goto_1
    if-nez v3, :cond_a

    .line 174
    if-eqz v4, :cond_b

    .line 176
    :cond_a
    iget v2, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    .line 178
    add-int/lit8 v2, v2, 0x32

    .line 180
    iput v2, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    .line 182
    iget-object v3, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 184
    iput v2, v3, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    .line 186
    iget-object v3, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 188
    iput v2, v3, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    .line 190
    :cond_b
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 192
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 195
    move-result-object v2

    .line 196
    check-cast v2, Ljava/lang/Boolean;

    .line 198
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 201
    move-result v2

    .line 202
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setServiceDetectsGestures(Z)V

    .line 205
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 208
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 210
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    :cond_c
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 215
    and-int/lit16 v1, v1, 0x800

    .line 217
    if-eqz v1, :cond_d

    .line 219
    new-instance v1, Lcom/android/server/accessibility/AccessibilityInputFilter$1;

    .line 221
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$1;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V

    .line 224
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 227
    :cond_d
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 229
    and-int/lit8 v2, v1, 0x20

    .line 231
    if-nez v2, :cond_e

    .line 233
    and-int/lit8 v2, v1, 0x1

    .line 235
    if-nez v2, :cond_e

    .line 237
    and-int/lit16 v2, v1, 0x1000

    .line 239
    if-nez v2, :cond_e

    .line 241
    and-int/lit8 v1, v1, 0x40

    .line 243
    if-eqz v1, :cond_f

    .line 245
    :cond_e
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->createMagnificationGestureHandler(Landroid/content/Context;I)Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 252
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 254
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    :cond_f
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 259
    and-int/lit8 v0, v0, 0x10

    .line 261
    if-eqz v0, :cond_10

    .line 263
    new-instance v0, Lcom/android/server/accessibility/MotionEventInjector;

    .line 265
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 267
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 270
    move-result-object v1

    .line 271
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 273
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 275
    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/MotionEventInjector;-><init>(Landroid/os/Looper;Lcom/android/server/accessibility/AccessibilityTraceManager;)V

    .line 278
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 281
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    .line 283
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 286
    :cond_10
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 288
    const/high16 v1, -0x80000000

    .line 290
    and-int/2addr v0, v1

    .line 291
    if-eqz v0, :cond_11

    .line 293
    new-instance v0, Lcom/android/server/accessibility/SamsungTapDuration;

    .line 295
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 297
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    .line 299
    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTapDuration;-><init>(Landroid/content/Context;I)V

    .line 302
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTapDuration:Lcom/android/server/accessibility/SamsungTapDuration;

    .line 304
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 307
    :cond_11
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 309
    const/high16 v1, 0x1000000

    .line 311
    and-int/2addr v0, v1

    .line 312
    if-eqz v0, :cond_12

    .line 314
    new-instance v0, Lcom/android/server/accessibility/SamsungTouchBlocker;

    .line 316
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 318
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    .line 320
    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchBlocker;-><init>(Landroid/content/Context;I)V

    .line 323
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchBlocker:Lcom/android/server/accessibility/SamsungTouchBlocker;

    .line 325
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 328
    :cond_12
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 330
    and-int/lit16 v1, v0, 0x800

    .line 332
    if-nez v1, :cond_13

    .line 334
    and-int/lit16 v0, v0, 0x1000

    .line 336
    if-eqz v0, :cond_14

    .line 338
    :cond_13
    new-instance v0, Lcom/android/server/accessibility/autoaction/AutoActionController;

    .line 340
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 342
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    .line 344
    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/autoaction/AutoActionController;-><init>(Landroid/content/Context;I)V

    .line 347
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoActionController:Lcom/android/server/accessibility/autoaction/AutoActionController;

    .line 349
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 352
    :cond_14
    return-void
.end method

.method public final getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onInputEvent(Landroid/view/InputEvent;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    const-wide/16 v1, 0x1000

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 15
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v4, "event="

    .line 22
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string v4, ";policyFlags="

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    const-string v4, "AccessibilityInputFilter.onInputEvent"

    .line 42
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 45
    :cond_0
    invoke-static {}, Lcom/android/server/accessibility/Flags;->handleMultiDeviceInput()Z

    .line 48
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 50
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 56
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 59
    goto/16 :goto_1

    .line 61
    :cond_1
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 63
    const/4 v1, 0x2

    .line 64
    const/16 v2, 0x8

    .line 66
    const/4 v3, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    if-eqz v0, :cond_6

    .line 70
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDisplayId()I

    .line 73
    move-result v0

    .line 74
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mGenericMotionEventStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;

    .line 76
    if-nez v5, :cond_2

    .line 78
    new-instance v5, Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;

    .line 80
    invoke-direct {v5, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V

    .line 83
    iput-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mGenericMotionEventStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;

    .line 85
    :cond_2
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mGenericMotionEventStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;

    .line 87
    move-object v6, p1

    .line 88
    check-cast v6, Landroid/view/MotionEvent;

    .line 90
    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 92
    invoke-static {v5, v6}, Lcom/android/server/accessibility/AccessibilityInputFilter;->-$$Nest$manyServiceWantsGenericMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter;Landroid/view/MotionEvent;)Z

    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_3

    .line 98
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mGenericMotionEventStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;

    .line 100
    goto/16 :goto_0

    .line 102
    :cond_3
    const/16 v5, 0x2002

    .line 104
    invoke-virtual {p1, v5}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_4

    .line 110
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    .line 112
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object v4

    .line 116
    check-cast v4, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 118
    if-nez v4, :cond_8

    .line 120
    new-instance v4, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;

    .line 122
    invoke-direct {v4}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;-><init>()V

    .line 125
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->reset()V

    .line 128
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    .line 130
    invoke-virtual {v5, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    goto :goto_0

    .line 134
    :cond_4
    const/16 v5, 0x1002

    .line 136
    invoke-virtual {p1, v5}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_8

    .line 142
    invoke-virtual {v6, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 145
    move-result v5

    .line 146
    if-ne v5, v1, :cond_5

    .line 148
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 150
    and-int/lit8 v6, v5, 0x2

    .line 152
    if-nez v6, :cond_8

    .line 154
    if-eq v5, v2, :cond_8

    .line 156
    const/16 v6, 0x800

    .line 158
    if-eq v5, v6, :cond_8

    .line 160
    const/16 v6, 0x1000

    .line 162
    if-ne v5, v6, :cond_5

    .line 164
    goto :goto_0

    .line 165
    :cond_5
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    .line 167
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 170
    move-result-object v4

    .line 171
    check-cast v4, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 173
    if-nez v4, :cond_8

    .line 175
    new-instance v4, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;

    .line 177
    invoke-direct {v4}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;-><init>()V

    .line 180
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->reset()V

    .line 183
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    .line 185
    invoke-virtual {v5, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    goto :goto_0

    .line 189
    :cond_6
    instance-of v0, p1, Landroid/view/KeyEvent;

    .line 191
    if-eqz v0, :cond_8

    .line 193
    const/16 v0, 0x101

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_8

    .line 201
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;

    .line 203
    if-nez v0, :cond_7

    .line 205
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;

    .line 207
    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;-><init>()V

    .line 210
    new-instance v4, Landroid/util/SparseBooleanArray;

    .line 212
    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 215
    iput-object v4, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;->mEventSequenceStartedMap:Landroid/util/SparseBooleanArray;

    .line 217
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;->reset()V

    .line 220
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;

    .line 222
    :cond_7
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;

    .line 224
    :cond_8
    :goto_0
    if-nez v4, :cond_9

    .line 226
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 229
    goto/16 :goto_1

    .line 231
    :cond_9
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    .line 234
    move-result v0

    .line 235
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDisplayId()I

    .line 238
    move-result v5

    .line 239
    const/high16 v6, 0x40000000    # 2.0f

    .line 241
    and-int/2addr v6, p2

    .line 242
    if-nez v6, :cond_a

    .line 244
    invoke-static {}, Lcom/android/server/accessibility/Flags;->doNotResetKeyEventState()Z

    .line 247
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 250
    goto/16 :goto_1

    .line 252
    :cond_a
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    .line 255
    move-result v6

    .line 256
    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->updateInputSource(I)Z

    .line 259
    move-result v6

    .line 260
    if-eqz v6, :cond_b

    .line 262
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 264
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 267
    move-result-object v5

    .line 268
    check-cast v5, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 270
    if-eqz v5, :cond_b

    .line 272
    invoke-interface {v5, v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 275
    :cond_b
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->inputSourceValid()Z

    .line 278
    move-result v0

    .line 279
    if-nez v0, :cond_c

    .line 281
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 284
    goto/16 :goto_1

    .line 286
    :cond_c
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 288
    if-eqz v0, :cond_13

    .line 290
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 292
    const v5, -0x7effe425

    .line 295
    and-int/2addr v0, v5

    .line 296
    if-eqz v0, :cond_12

    .line 298
    check-cast p1, Landroid/view/MotionEvent;

    .line 300
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessScroll()Z

    .line 303
    move-result v0

    .line 304
    if-nez v0, :cond_d

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 309
    move-result v0

    .line 310
    if-ne v0, v2, :cond_d

    .line 312
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 315
    goto :goto_1

    .line 316
    :cond_d
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z

    .line 319
    move-result v0

    .line 320
    if-nez v0, :cond_e

    .line 322
    goto :goto_1

    .line 323
    :cond_e
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 326
    move-result v0

    .line 327
    if-eq v0, v1, :cond_f

    .line 329
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 334
    move-result-wide v1

    .line 335
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 338
    :cond_f
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 345
    move-result v1

    .line 346
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 348
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 351
    move-result-object v2

    .line 352
    if-eqz v2, :cond_10

    .line 354
    move v3, v1

    .line 355
    :cond_10
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 358
    move-result-object p0

    .line 359
    check-cast p0, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 361
    if-eqz p0, :cond_11

    .line 363
    invoke-interface {p0, v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 366
    :cond_11
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 369
    goto :goto_1

    .line 370
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 373
    goto :goto_1

    .line 374
    :cond_13
    instance-of v0, p1, Landroid/view/KeyEvent;

    .line 376
    if-eqz v0, :cond_15

    .line 378
    check-cast p1, Landroid/view/KeyEvent;

    .line 380
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z

    .line 383
    move-result v0

    .line 384
    if-nez v0, :cond_14

    .line 386
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 389
    goto :goto_1

    .line 390
    :cond_14
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 392
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 395
    move-result-object p0

    .line 396
    check-cast p0, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 398
    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 401
    :cond_15
    :goto_1
    return-void
.end method

.method public final onInstalled()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 4
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 7
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    .line 10
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 12
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilterInstalled:Z

    .line 17
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 22
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p0
.end method

.method public final onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string p0, "AccessibilityInputFilter"

    .line 7
    const-string/jumbo p1, "onKeyEvent called before input filter installed!"

    .line 10
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/InputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 17
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 3
    if-nez p2, :cond_0

    .line 5
    const-string p0, "AccessibilityInputFilter"

    .line 7
    const-string/jumbo p1, "onMotionEvent called before input filter installed!"

    .line 10
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p3}, Landroid/view/InputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 17
    return-void
.end method

.method public final onUninstalled()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 4
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 7
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 9
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilterInstalled:Z

    .line 14
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 19
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method

.method public final refreshMagnificationMode(Landroid/view/Display;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    .line 13
    if-nez v1, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->getMode()I

    .line 19
    move-result v2

    .line 20
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 22
    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter v4

    .line 25
    :try_start_0
    iget v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 27
    invoke-virtual {v3, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    .line 34
    move-result v3

    .line 35
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-ne v2, v3, :cond_1

    .line 38
    return-void

    .line 39
    :cond_1
    invoke-interface {v1}, Lcom/android/server/accessibility/EventStreamTransformation;->onDestroy()V

    .line 42
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {v2, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->createMagnificationGestureHandler(Landroid/content/Context;I)Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    .line 51
    move-result-object p1

    .line 52
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 54
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 60
    if-nez v2, :cond_2

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    if-ne v2, v1, :cond_3

    .line 65
    iget-object v1, v1, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 67
    iput-object v1, p1, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 69
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 71
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    :goto_0
    if-eqz v2, :cond_5

    .line 77
    invoke-interface {v2}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    .line 80
    move-result-object v3

    .line 81
    if-ne v3, v1, :cond_4

    .line 83
    invoke-interface {v2, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 86
    iget-object v1, v1, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 88
    iput-object v1, p1, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    invoke-interface {v2}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    .line 94
    move-result-object v2

    .line 95
    goto :goto_0

    .line 96
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 98
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    return-void

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    throw p0
.end method

.method public final requestDelegating(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_8

    .line 9
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 17
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 19
    iget-boolean v0, p1, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 21
    if-eqz v0, :cond_8

    .line 23
    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 31
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->run()V

    .line 46
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 51
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 60
    :cond_1
    iget v0, p1, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 62
    const/4 v1, 0x1

    .line 63
    if-ne v0, v1, :cond_2

    .line 65
    move v2, v1

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/4 v2, 0x0

    .line 68
    :goto_0
    const/4 v3, 0x3

    .line 69
    const-string v4, "TouchExplorer"

    .line 71
    if-nez v2, :cond_4

    .line 73
    if-ne v0, v3, :cond_3

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 78
    const-string v0, "Error: Trying to delegate from "

    .line 80
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    iget p1, p1, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 85
    invoke-static {p1}, Lcom/android/server/accessibility/gestures/TouchState;->getStateSymbolicName(I)Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 96
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    goto :goto_3

    .line 100
    :cond_4
    :goto_1
    iget-object v2, p1, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 102
    iget-object v10, p1, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    .line 104
    if-eqz v2, :cond_7

    .line 106
    if-nez v10, :cond_5

    .line 108
    goto :goto_2

    .line 109
    :cond_5
    iget v4, p1, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedPolicyFlags:I

    .line 111
    if-ne v0, v3, :cond_6

    .line 113
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 115
    shl-int v7, v1, v0

    .line 117
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 119
    const/4 v6, 0x1

    .line 120
    move v8, v4

    .line 121
    move-object v9, v2

    .line 122
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 125
    :cond_6
    const/4 v0, 0x4

    .line 126
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 129
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 131
    invoke-virtual {p0, v4, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(ILandroid/view/MotionEvent;)V

    .line 134
    goto :goto_3

    .line 135
    :cond_7
    :goto_2
    const-string p0, "Unable to start delegating: unable to get last received event."

    .line 137
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_8
    :goto_3
    return-void
.end method

.method public final requestDragging(II)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->contains(I)Z

    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_8

    .line 15
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 23
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 25
    iget-boolean v3, v1, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 27
    if-eqz v3, :cond_8

    .line 29
    const-string v3, "TouchExplorer"

    .line 31
    if-ltz v2, :cond_7

    .line 33
    const/16 v4, 0x20

    .line 35
    if-gt v2, v4, :cond_7

    .line 37
    const/4 v4, 0x1

    .line 38
    shl-int v5, v4, v2

    .line 40
    iget-object v6, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 42
    iget v7, v6, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 44
    and-int/2addr v5, v7

    .line 45
    if-eqz v5, :cond_7

    .line 47
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_1

    .line 53
    iget-object v5, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 55
    invoke-virtual {v5}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_0

    .line 61
    invoke-virtual {v5}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_0

    .line 67
    invoke-virtual {v5}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->run()V

    .line 70
    invoke-virtual {v5}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 73
    :cond_0
    iget-object v5, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 75
    invoke-virtual {v5}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_1

    .line 81
    invoke-virtual {v5}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 84
    :cond_1
    iget v5, v1, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 86
    if-ne v5, v4, :cond_6

    .line 88
    iput v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 90
    sget-boolean v2, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 92
    if-eqz v2, :cond_2

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    const-string v5, "Drag requested on pointer "

    .line 98
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    iget v5, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 103
    invoke-static {v2, v5, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 106
    :cond_2
    iget-object v11, v1, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 108
    iget-object v2, v1, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    .line 110
    if-eqz v11, :cond_5

    .line 112
    if-nez v2, :cond_3

    .line 114
    goto :goto_0

    .line 115
    :cond_3
    iget v10, v1, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedPolicyFlags:I

    .line 117
    iget v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 119
    shl-int v9, v4, v3

    .line 121
    iget v3, v6, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    .line 123
    invoke-virtual {v11, v3}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 126
    invoke-virtual {v0, v11}, Lcom/android/server/accessibility/gestures/TouchExplorer;->computeDownEventForDrag(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 129
    move-result-object v16

    .line 130
    const/4 v3, 0x3

    .line 131
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 134
    if-eqz v16, :cond_4

    .line 136
    iget-object v12, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 138
    const/4 v13, 0x0

    .line 139
    move v14, v9

    .line 140
    move v15, v10

    .line 141
    move-object/from16 v17, v2

    .line 143
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 146
    iget-object v7, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 148
    const/4 v8, 0x2

    .line 149
    move-object v12, v2

    .line 150
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 153
    goto :goto_1

    .line 154
    :cond_4
    iget-object v7, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 156
    const/4 v8, 0x0

    .line 157
    move-object v12, v2

    .line 158
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 161
    goto :goto_1

    .line 162
    :cond_5
    :goto_0
    const-string v0, "Unable to start dragging: unable to get last event."

    .line 164
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    goto :goto_1

    .line 168
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    const-string v2, "Error: Trying to drag from "

    .line 172
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    iget v1, v1, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 177
    invoke-static {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getStateSymbolicName(I)Ljava/lang/String;

    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v0

    .line 188
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    goto :goto_1

    .line 192
    :cond_7
    const-string v0, "Trying to drag with invalid pointer: "

    .line 194
    invoke-static {v2, v0, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_8
    :goto_1
    return-void
.end method

.method public final requestTouchExploration(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 9
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 17
    sget-boolean p1, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 19
    const-string v0, "TouchExplorer"

    .line 21
    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    const-string p1, "Starting touch explorer from service."

    .line 28
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 33
    iget-boolean v1, p1, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 35
    if-eqz v1, :cond_4

    .line 37
    iget v1, p1, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x1

    .line 41
    if-ne v1, v3, :cond_1

    .line 43
    move v1, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v1, v2

    .line 46
    :goto_0
    if-eqz v1, :cond_4

    .line 48
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 50
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 52
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 55
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 57
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    .line 60
    move-result v5

    .line 61
    const/4 v6, -0x1

    .line 62
    if-ne v5, v6, :cond_2

    .line 64
    iget-object v7, p1, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 66
    if-eqz v7, :cond_2

    .line 68
    invoke-virtual {v7, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 71
    move-result v5

    .line 72
    :cond_2
    if-ne v5, v6, :cond_3

    .line 74
    const-string p0, "Unable to find a valid pointer for touch exploration."

    .line 76
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 83
    shl-int v0, v3, v5

    .line 85
    iget p1, p1, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedPolicyFlags:I

    .line 87
    iput v0, v4, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 89
    iput p1, v4, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 91
    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->run()V

    .line 94
    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->clear()V

    .line 97
    iget v0, v1, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_4

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 108
    :cond_4
    :goto_1
    return-void
.end method

.method public final resetAllStreamState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 13
    :goto_0
    if-ltz v1, :cond_0

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/view/Display;

    .line 21
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamStateForDisplay(I)V

    .line 28
    add-int/lit8 v1, v1, -0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;

    .line 33
    if-eqz p0, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;->reset()V

    .line 38
    :cond_1
    return-void
.end method

.method public final resetStreamStateForDisplay(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 14
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 27
    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 32
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    .line 34
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 37
    :cond_1
    return-void
.end method

.method public final setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setUserAndEnabledFeatures(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 3
    if-ne v0, p2, :cond_0

    .line 5
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    .line 7
    if-ne v0, p1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 17
    :cond_1
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    .line 19
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 21
    iget-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 23
    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    .line 28
    :cond_2
    return-void
.end method
