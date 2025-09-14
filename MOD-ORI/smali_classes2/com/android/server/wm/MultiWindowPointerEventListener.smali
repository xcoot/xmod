.class public final Lcom/android/server/wm/MultiWindowPointerEventListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# static fields
.field public static final SAFE_DEBUG:Z


# instance fields
.field public mAdjustedMinimalTaskBounds:Z

.field public final mContentRect:Landroid/graphics/Rect;

.field public mDefaultMinimalSizeOfResizableTask:I

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mFreeformGuideFullscreenDimViewMargin:I

.field public mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

.field public final mInitRect:Landroid/graphics/Rect;

.field public mIsStatusBarShowing:Z

.field public mMinHeight:I

.field public mMinWidth:I

.field public mMoving:Z

.field public mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field public final mNotResizableRect:Landroid/graphics/Rect;

.field public mNotSupport:Z

.field public mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field public mReadyToFreeform:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mSizeCompatDragPolicy:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

.field public mSizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

.field public mStartX:I

.field public mStartY:I

.field public mStatusBarManager:Landroid/app/SemStatusBarManager;

.field public final mStatusBarReceiver:Lcom/android/server/wm/MultiWindowPointerEventListener$1;

.field public mTask:Lcom/android/server/wm/Task;

.field public mTaskBoundsAtDragStart:Landroid/graphics/Rect;

.field public final mTaskFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskFromPointSearchResult;

.field public mTaskId:I

.field public mTaskOrientation:I

.field public mTaskResizable:Z

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/DisplayContent$TaskFromPointSearchResult;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskFromPointSearchResult;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    .line 31
    .line 32
    new-instance v0, Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizableRect:Landroid/graphics/Rect;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsStatusBarShowing:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    .line 45
    .line 46
    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 50
    .line 51
    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 52
    .line 53
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    .line 54
    .line 55
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAdjustedMinimalTaskBounds:Z

    .line 56
    .line 57
    new-instance v0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener$1;-><init>(Lcom/android/server/wm/MultiWindowPointerEventListener;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 63
    .line 64
    iput-object p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 65
    .line 66
    new-instance p2, Landroid/content/IntentFilter;

    .line 67
    .line 68
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v1, "com.samsung.systemui.statusbar.ANIMATING"

    .line 72
    .line 73
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v1, "com.samsung.systemui.statusbar.EXPANDED"

    .line 77
    .line 78
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v1, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 82
    .line 83
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTouchSlop:I

    .line 102
    .line 103
    return-void
.end method

.method public static printFailureLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, " : "

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "MultiWindowPointerEventListener"

    .line 22
    .line 23
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final adjustBoundsIfNeeded(Z)Z
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "adjustBoundsIfNeeded"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v0, v1, :cond_9

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTask:Lcom/android/server/wm/Task;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string p0, "TaskBoundsAtDragStart is null"

    .line 20
    .line 21
    invoke-static {v2, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return v3

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getEdgeFlags()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    iget-boolean v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-boolean v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->asSizeCompatResizeGuide()Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p1, v0, p0, v1}, Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;->cancelAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    .line 59
    .line 60
    .line 61
    return v3

    .line 62
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    .line 63
    .line 64
    if-nez v2, :cond_4

    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    return v3

    .line 74
    :cond_4
    const/4 v2, 0x5

    .line 75
    if-ne v0, v2, :cond_5

    .line 76
    .line 77
    :goto_0
    move v6, v2

    .line 78
    goto :goto_1

    .line 79
    :cond_5
    const/4 v2, 0x4

    .line 80
    goto :goto_0

    .line 81
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->asSizeCompatResizeGuide()Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    .line 88
    .line 89
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 90
    .line 91
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 92
    .line 93
    const/4 v9, 0x0

    .line 94
    const/4 v10, 0x0

    .line 95
    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;->adjustBounds(Lcom/samsung/android/core/SizeCompatInfo;ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    .line 99
    .line 100
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_7

    .line 107
    .line 108
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_DEX_SIZE_COMPAT_DRAG:Z

    .line 109
    .line 110
    if-eqz p1, :cond_6

    .line 111
    .line 112
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    .line 113
    .line 114
    invoke-static {p1}, Lcom/samsung/android/core/SizeCompatInfo;->isDragDexSizeCompatRotatable(Lcom/samsung/android/core/SizeCompatInfo;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_6

    .line 119
    .line 120
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 123
    .line 124
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    const/4 p0, 0x1

    .line 128
    return p0

    .line 129
    :cond_7
    if-eqz p1, :cond_8

    .line 130
    .line 131
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->asSizeCompatResizeGuide()Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 138
    .line 139
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {p1, v0, v2, v1}, Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;->cancelAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    .line 146
    .line 147
    .line 148
    :cond_8
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 149
    .line 150
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    .line 151
    .line 152
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 153
    .line 154
    .line 155
    return v3

    .line 156
    :cond_9
    :goto_2
    const-string p0, "Task is invalid"

    .line 157
    .line 158
    invoke-static {v2, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return v3
.end method

.method public final affordanceAnim(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v3, v0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 27
    .line 28
    invoke-interface {v3}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizerState(Landroid/os/IBinder;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->getPendingEventsQueue()Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3, v0, v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->-$$Nest$mgetPendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v1, 0x4

    .line 48
    invoke-static {v3, v0, v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->-$$Nest$mgetPendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    new-instance v4, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 55
    .line 56
    invoke-direct {v4, v1, v0}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(ILcom/android/server/wm/Task;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, v3, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :goto_0
    iput p1, v4, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mGestureFrom:I

    .line 66
    .line 67
    iget-object p1, v3, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    iget-object p1, v2, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 79
    .line 80
    .line 81
    :goto_1
    const/16 p1, 0x7f

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->vibrate(I)V

    .line 84
    .line 85
    .line 86
    :cond_3
    return-void
.end method

.method public final interceptFindTargetTaskBounds(Landroid/graphics/Rect;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getEdgeFlags()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x5

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/16 v1, 0x9

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    sget-object v0, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTask:Lcom/android/server/wm/Task;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-static {v1, v0}, Lcom/android/server/wm/SizeCompatPolicyManager;->getCompatPolicy(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v3, 0x0

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MT_DEX_SIZE_COMPAT_DRAG:Z

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v1, v3

    .line 37
    :goto_0
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->isEnabled()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    iget-object v4, v1, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTask:Lcom/android/server/wm/Task;

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    move-object v3, v1

    .line 60
    :cond_2
    iput-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSizeCompatDragPolicy:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 61
    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    return v2

    .line 65
    :cond_3
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    .line 68
    .line 69
    if-nez v1, :cond_4

    .line 70
    .line 71
    new-instance v1, Lcom/samsung/android/core/SizeCompatInfo;

    .line 72
    .line 73
    invoke-direct {v1}, Lcom/samsung/android/core/SizeCompatInfo;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    .line 77
    .line 78
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSizeCompatDragPolicy:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 79
    .line 80
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->fillSizeCompatInfoForDrag(Lcom/samsung/android/core/SizeCompatInfo;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSizeCompatDragPolicy:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {v3}, Lcom/samsung/android/core/SizeCompatInfo;->isDragDexSizeCompatRotatable(Lcom/samsung/android/core/SizeCompatInfo;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_5

    .line 97
    .line 98
    sget-object v4, Lcom/android/server/wm/DexSizeCompatController$LazyHolder;->sInstance:Lcom/android/server/wm/DexSizeCompatController;

    .line 99
    .line 100
    iget v4, v4, Lcom/android/server/wm/DexSizeCompatController;->mDefaultScale:F

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    sget-object v4, Lcom/android/server/wm/DexSizeCompatController$LazyHolder;->sInstance:Lcom/android/server/wm/DexSizeCompatController;

    .line 104
    .line 105
    iget v4, v4, Lcom/android/server/wm/DexSizeCompatController;->mDefaultScale:F

    .line 106
    .line 107
    :goto_1
    iget-object v5, v1, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpRect:Landroid/graphics/Rect;

    .line 108
    .line 109
    invoke-virtual {v3}, Lcom/samsung/android/core/SizeCompatInfo;->getMaxWidth()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    invoke-static {v6, v4}, Lcom/samsung/android/core/CompatUtils;->applyScale(IF)I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    invoke-virtual {v3}, Lcom/samsung/android/core/SizeCompatInfo;->getMaxHeight()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-static {v3, v4}, Lcom/samsung/android/core/CompatUtils;->applyScale(IF)I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-virtual {v5, v2, v2, v6, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 126
    .line 127
    .line 128
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 129
    .line 130
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 131
    .line 132
    iget-object v1, v1, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpRect:Landroid/graphics/Rect;

    .line 133
    .line 134
    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 138
    .line 139
    if-nez p1, :cond_6

    .line 140
    .line 141
    new-instance p1, Landroid/graphics/Rect;

    .line 142
    .line 143
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 147
    .line 148
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 149
    .line 150
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 151
    .line 152
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 153
    .line 154
    .line 155
    return v0
.end method

.method public final isAllowCornerGestureState()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_RESIZE_VIEW:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    .line 7
    .line 8
    if-eqz v0, :cond_8

    .line 9
    .line 10
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_ENABLED:Z

    .line 11
    .line 12
    if-eqz v0, :cond_8

    .line 13
    .line 14
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NOT_SUPPORT_FOR_COVER_DISPLAY:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 30
    .line 31
    const-string v2, "isAllowCornerGestureState"

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    const-string/jumbo p0, "mMultiWindowEdgeDetector is null"

    .line 36
    .line 37
    .line 38
    invoke-static {v2, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v1

    .line 42
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsStatusBarShowing:Z

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    const-string/jumbo p0, "statusBar is showing"

    .line 47
    .line 48
    .line 49
    invoke-static {v2, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return v1

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    const-string/jumbo p0, "quick panel is expanded"

    .line 64
    .line 65
    .line 66
    invoke-static {v2, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return v1

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    const-string/jumbo p0, "split activated"

    .line 83
    .line 84
    .line 85
    invoke-static {v2, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return v1

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    const-string p0, "keyguard is currently locked"

    .line 98
    .line 99
    invoke-static {v2, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return v1

    .line 103
    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 106
    .line 107
    if-eqz p0, :cond_7

    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 110
    .line 111
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 112
    .line 113
    const/16 v0, 0x8b2

    .line 114
    .line 115
    if-ne p0, v0, :cond_6

    .line 116
    .line 117
    const-string p0, "edge panel is expanded"

    .line 118
    .line 119
    invoke-static {v2, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return v1

    .line 123
    :cond_6
    const/16 v0, 0x988

    .line 124
    .line 125
    if-ne p0, v0, :cond_7

    .line 126
    .line 127
    const-string/jumbo p0, "smart select running"

    .line 128
    .line 129
    .line 130
    invoke-static {v2, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return v1

    .line 134
    :cond_7
    const/4 p0, 0x1

    .line 135
    return p0

    .line 136
    :cond_8
    :goto_0
    return v1
.end method

.method public final loadDimens()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x105016f

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizableTask:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const v1, 0x10501ae

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideFullscreenDimViewMargin:I

    .line 34
    .line 35
    sget-boolean v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "mDefaultMinimalSizeOfResizableTask="

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizableTask:I

    .line 47
    .line 48
    const-string v1, "MultiWindowPointerEventListener"

    .line 49
    .line 50
    invoke-static {v0, p0, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public final onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    float-to-int v2, v2

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    float-to-int v3, v3

    .line 21
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 22
    .line 23
    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->readyToFreeform(II)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget-boolean v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x1

    .line 31
    if-eq v5, v4, :cond_0

    .line 32
    .line 33
    iput-boolean v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    .line 34
    .line 35
    move v5, v7

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v5, v6

    .line 38
    :goto_0
    const/4 v8, 0x5

    .line 39
    const/4 v9, 0x6

    .line 40
    const/4 v10, 0x2

    .line 41
    if-eqz v0, :cond_20

    .line 42
    .line 43
    if-eq v0, v7, :cond_1a

    .line 44
    .line 45
    if-eq v0, v10, :cond_2

    .line 46
    .line 47
    const/4 p1, 0x3

    .line 48
    if-eq v0, p1, :cond_1

    .line 49
    .line 50
    if-eq v0, v9, :cond_1a

    .line 51
    .line 52
    goto/16 :goto_e

    .line 53
    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_e

    .line 58
    .line 59
    :cond_2
    if-nez v1, :cond_3

    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsStatusBarShowing:Z

    .line 63
    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    const-string/jumbo p1, "onPointerEvent"

    .line 67
    .line 68
    .line 69
    const-string/jumbo v0, "statusBar is showing"

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_e

    .line 81
    .line 82
    :cond_4
    iget p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStartX:I

    .line 83
    .line 84
    sub-int p1, v2, p1

    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTouchSlop:I

    .line 91
    .line 92
    if-gt p1, v0, :cond_6

    .line 93
    .line 94
    iget p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStartY:I

    .line 95
    .line 96
    sub-int p1, v3, p1

    .line 97
    .line 98
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTouchSlop:I

    .line 103
    .line 104
    if-le p1, v0, :cond_5

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    return-void

    .line 108
    :cond_6
    :goto_1
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    .line 109
    .line 110
    if-nez p1, :cond_7

    .line 111
    .line 112
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    .line 113
    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 117
    .line 118
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStartX:I

    .line 119
    .line 120
    sub-int v0, v2, v0

    .line 121
    .line 122
    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStartY:I

    .line 123
    .line 124
    sub-int v1, v3, v1

    .line 125
    .line 126
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isValidGesture(II)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-nez p1, :cond_7

    .line 131
    .line 132
    const-string/jumbo p1, "onPointerEvent"

    .line 133
    .line 134
    .line 135
    const-string v0, "invalid gesture"

    .line 136
    .line 137
    invoke-static {p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_e

    .line 146
    .line 147
    :cond_7
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    .line 148
    .line 149
    const v0, 0x10404a1

    .line 150
    .line 151
    .line 152
    const v1, 0x103012b

    .line 153
    .line 154
    .line 155
    if-nez p1, :cond_8

    .line 156
    .line 157
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    .line 158
    .line 159
    if-eqz p1, :cond_8

    .line 160
    .line 161
    const-string/jumbo p1, "onPointerEvent"

    .line 162
    .line 163
    .line 164
    const-string/jumbo v2, "task is not resizable"

    .line 165
    .line 166
    .line 167
    invoke-static {p1, v2}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    .line 171
    .line 172
    if-nez p1, :cond_32

    .line 173
    .line 174
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getEdgeFlags()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->affordanceAnim(I)V

    .line 181
    .line 182
    .line 183
    new-instance p1, Landroid/view/ContextThemeWrapper;

    .line 184
    .line 185
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 186
    .line 187
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 188
    .line 189
    invoke-direct {p1, v2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 190
    .line 191
    .line 192
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 193
    .line 194
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 195
    .line 196
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 205
    .line 206
    .line 207
    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    .line 208
    .line 209
    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    .line 210
    .line 211
    goto/16 :goto_e

    .line 212
    .line 213
    :cond_8
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_RESIZE_VIEW:Z

    .line 214
    .line 215
    if-eqz p1, :cond_a

    .line 216
    .line 217
    iget-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    .line 218
    .line 219
    if-eqz v9, :cond_a

    .line 220
    .line 221
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 222
    .line 223
    if-nez v9, :cond_a

    .line 224
    .line 225
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY_DRAG:Z

    .line 226
    .line 227
    const/4 v11, 0x0

    .line 228
    if-eqz v9, :cond_9

    .line 229
    .line 230
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSizeCompatDragPolicy:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 231
    .line 232
    if-eqz v9, :cond_9

    .line 233
    .line 234
    new-instance v9, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;

    .line 235
    .line 236
    invoke-direct {v9, v11, v11}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 237
    .line 238
    .line 239
    iput-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_9
    new-instance v9, Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 243
    .line 244
    invoke-direct {v9, v11}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;-><init>(Landroid/content/Context;)V

    .line 245
    .line 246
    .line 247
    iput-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 248
    .line 249
    :cond_a
    :goto_2
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 250
    .line 251
    if-nez v9, :cond_b

    .line 252
    .line 253
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 254
    .line 255
    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 256
    .line 257
    const-string/jumbo v11, "persona"

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    check-cast v9, Lcom/samsung/android/knox/SemPersonaManager;

    .line 265
    .line 266
    iput-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 267
    .line 268
    :cond_b
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 269
    .line 270
    if-eqz v9, :cond_d

    .line 271
    .line 272
    invoke-virtual {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxKeyguardShown()Z

    .line 273
    .line 274
    .line 275
    move-result v9

    .line 276
    if-eqz v9, :cond_d

    .line 277
    .line 278
    const-string/jumbo v2, "onPointerEvent"

    .line 279
    .line 280
    .line 281
    const-string v3, "KnoxKeyguard is not resizable"

    .line 282
    .line 283
    invoke-static {v2, v3}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    if-eqz p1, :cond_c

    .line 287
    .line 288
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 289
    .line 290
    if-eqz p1, :cond_c

    .line 291
    .line 292
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizableRect:Landroid/graphics/Rect;

    .line 293
    .line 294
    invoke-virtual {p1, v2}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->show(Landroid/graphics/Rect;)V

    .line 295
    .line 296
    .line 297
    :cond_c
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    .line 298
    .line 299
    if-nez p1, :cond_32

    .line 300
    .line 301
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 302
    .line 303
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getEdgeFlags()I

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->affordanceAnim(I)V

    .line 308
    .line 309
    .line 310
    new-instance p1, Landroid/view/ContextThemeWrapper;

    .line 311
    .line 312
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 313
    .line 314
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 315
    .line 316
    invoke-direct {p1, v2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 317
    .line 318
    .line 319
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 320
    .line 321
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 322
    .line 323
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 332
    .line 333
    .line 334
    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    .line 335
    .line 336
    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    .line 337
    .line 338
    goto/16 :goto_e

    .line 339
    .line 340
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    .line 341
    .line 342
    const/16 v1, 0x31

    .line 343
    .line 344
    if-eqz v0, :cond_15

    .line 345
    .line 346
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 347
    .line 348
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getEdgeFlags()I

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 353
    .line 354
    invoke-static {v4, v0, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->applyResizeRect(Landroid/graphics/Rect;III)V

    .line 355
    .line 356
    .line 357
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 358
    .line 359
    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    .line 360
    .line 361
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    .line 362
    .line 363
    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->adjustMinimalTaskBounds(Landroid/graphics/Rect;III)Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    .line 368
    .line 369
    if-eqz v3, :cond_11

    .line 370
    .line 371
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 372
    .line 373
    const v5, 0x3f99999a    # 1.2f

    .line 374
    .line 375
    .line 376
    if-ne v3, v7, :cond_e

    .line 377
    .line 378
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    int-to-float v0, v0

    .line 383
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    int-to-float v3, v3

    .line 388
    div-float/2addr v0, v3

    .line 389
    cmpg-float v0, v0, v5

    .line 390
    .line 391
    if-gez v0, :cond_11

    .line 392
    .line 393
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    int-to-float v0, v0

    .line 398
    mul-float/2addr v0, v5

    .line 399
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 404
    .line 405
    sub-int/2addr v3, v0

    .line 406
    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 407
    .line 408
    goto :goto_3

    .line 409
    :cond_e
    if-ne v3, v10, :cond_11

    .line 410
    .line 411
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 412
    .line 413
    .line 414
    move-result v3

    .line 415
    int-to-float v3, v3

    .line 416
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 417
    .line 418
    .line 419
    move-result v9

    .line 420
    int-to-float v9, v9

    .line 421
    div-float/2addr v3, v9

    .line 422
    cmpg-float v3, v3, v5

    .line 423
    .line 424
    if-gez v3, :cond_11

    .line 425
    .line 426
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 427
    .line 428
    .line 429
    move-result v3

    .line 430
    int-to-float v3, v3

    .line 431
    mul-float/2addr v3, v5

    .line 432
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    if-eq v0, v8, :cond_10

    .line 437
    .line 438
    const/16 v5, 0x9

    .line 439
    .line 440
    if-eq v0, v5, :cond_f

    .line 441
    .line 442
    goto :goto_3

    .line 443
    :cond_f
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 444
    .line 445
    add-int/2addr v0, v3

    .line 446
    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 447
    .line 448
    goto :goto_3

    .line 449
    :cond_10
    iget v0, v4, Landroid/graphics/Rect;->right:I

    .line 450
    .line 451
    sub-int/2addr v0, v3

    .line 452
    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 453
    .line 454
    :cond_11
    :goto_3
    if-eqz p1, :cond_14

    .line 455
    .line 456
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 457
    .line 458
    if-eqz v0, :cond_14

    .line 459
    .line 460
    if-eqz v2, :cond_12

    .line 461
    .line 462
    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->updateGuideState(I)Z

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    if-eqz v0, :cond_14

    .line 467
    .line 468
    const/16 v0, 0x29

    .line 469
    .line 470
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->vibrate(I)V

    .line 471
    .line 472
    .line 473
    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAdjustedMinimalTaskBounds:Z

    .line 474
    .line 475
    goto :goto_4

    .line 476
    :cond_12
    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->updateGuideState(I)Z

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    if-eqz v0, :cond_14

    .line 481
    .line 482
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAdjustedMinimalTaskBounds:Z

    .line 483
    .line 484
    if-nez v0, :cond_13

    .line 485
    .line 486
    invoke-virtual {p0, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->vibrate(I)V

    .line 487
    .line 488
    .line 489
    :cond_13
    iput-boolean v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAdjustedMinimalTaskBounds:Z

    .line 490
    .line 491
    :cond_14
    :goto_4
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    .line 492
    .line 493
    if-nez v0, :cond_16

    .line 494
    .line 495
    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    .line 496
    .line 497
    iput-boolean v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    .line 498
    .line 499
    goto :goto_5

    .line 500
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 501
    .line 502
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    .line 503
    .line 504
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 505
    .line 506
    .line 507
    if-nez v4, :cond_16

    .line 508
    .line 509
    if-eqz v5, :cond_16

    .line 510
    .line 511
    invoke-virtual {p0, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->vibrate(I)V

    .line 512
    .line 513
    .line 514
    :cond_16
    :goto_5
    if-eqz p1, :cond_18

    .line 515
    .line 516
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 517
    .line 518
    if-eqz p1, :cond_18

    .line 519
    .line 520
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY_DRAG:Z

    .line 521
    .line 522
    if-eqz v0, :cond_17

    .line 523
    .line 524
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->asSizeCompatResizeGuide()Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    if-eqz p1, :cond_17

    .line 529
    .line 530
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSizeCompatDragPolicy:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 531
    .line 532
    if-eqz p1, :cond_17

    .line 533
    .line 534
    invoke-virtual {p0, v6}, Lcom/android/server/wm/MultiWindowPointerEventListener;->adjustBoundsIfNeeded(Z)Z

    .line 535
    .line 536
    .line 537
    :cond_17
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 538
    .line 539
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 540
    .line 541
    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->show(Landroid/graphics/Rect;)V

    .line 542
    .line 543
    .line 544
    :cond_18
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 545
    .line 546
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 547
    .line 548
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    .line 549
    .line 550
    .line 551
    move-result-object p1

    .line 552
    if-eqz p1, :cond_32

    .line 553
    .line 554
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    .line 555
    .line 556
    .line 557
    move-result p1

    .line 558
    if-nez p1, :cond_19

    .line 559
    .line 560
    goto/16 :goto_e

    .line 561
    .line 562
    :cond_19
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 563
    .line 564
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 565
    .line 566
    new-instance v0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda1;

    .line 567
    .line 568
    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiWindowPointerEventListener;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 572
    .line 573
    .line 574
    goto/16 :goto_e

    .line 575
    .line 576
    :cond_1a
    if-eqz v1, :cond_1b

    .line 577
    .line 578
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    .line 579
    .line 580
    if-nez p1, :cond_1b

    .line 581
    .line 582
    const-string/jumbo p1, "onPointerEvent"

    .line 583
    .line 584
    .line 585
    const-string/jumbo v0, "not ready to freeform"

    .line 586
    .line 587
    .line 588
    invoke-static {p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    :cond_1b
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY_DRAG:Z

    .line 592
    .line 593
    if-eqz p1, :cond_1c

    .line 594
    .line 595
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 596
    .line 597
    if-eqz p1, :cond_1c

    .line 598
    .line 599
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->asSizeCompatResizeGuide()Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;

    .line 600
    .line 601
    .line 602
    move-result-object p1

    .line 603
    if-eqz p1, :cond_1c

    .line 604
    .line 605
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSizeCompatDragPolicy:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 606
    .line 607
    if-eqz p1, :cond_1c

    .line 608
    .line 609
    invoke-virtual {p0, v7}, Lcom/android/server/wm/MultiWindowPointerEventListener;->adjustBoundsIfNeeded(Z)Z

    .line 610
    .line 611
    .line 612
    move-result p1

    .line 613
    if-eqz p1, :cond_1f

    .line 614
    .line 615
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSizeCompatDragPolicy:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 616
    .line 617
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 618
    .line 619
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->ensureDragBounds(Landroid/graphics/Rect;)V

    .line 620
    .line 621
    .line 622
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 623
    .line 624
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 625
    .line 626
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 627
    .line 628
    iget-object p1, p1, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    .line 629
    .line 630
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    .line 631
    .line 632
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTask:Lcom/android/server/wm/Task;

    .line 633
    .line 634
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 639
    .line 640
    .line 641
    move-result v1

    .line 642
    new-instance v2, Landroid/graphics/Rect;

    .line 643
    .line 644
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 645
    .line 646
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 650
    .line 651
    .line 652
    move-result-object p1

    .line 653
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 654
    .line 655
    .line 656
    goto :goto_7

    .line 657
    :cond_1c
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    .line 658
    .line 659
    if-nez p1, :cond_1f

    .line 660
    .line 661
    if-eqz v1, :cond_1f

    .line 662
    .line 663
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    .line 664
    .line 665
    if-eqz p1, :cond_1f

    .line 666
    .line 667
    iget p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    .line 668
    .line 669
    const/4 v0, -0x1

    .line 670
    if-eq p1, v0, :cond_1e

    .line 671
    .line 672
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTask:Lcom/android/server/wm/Task;

    .line 673
    .line 674
    if-nez v0, :cond_1d

    .line 675
    .line 676
    goto :goto_6

    .line 677
    :cond_1d
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 678
    .line 679
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 680
    .line 681
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 682
    .line 683
    iget-object v1, v1, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    .line 684
    .line 685
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    new-instance v2, Landroid/graphics/Rect;

    .line 694
    .line 695
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 696
    .line 697
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v1, v6, p1, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 701
    .line 702
    .line 703
    move-result-object p1

    .line 704
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 705
    .line 706
    .line 707
    goto :goto_7

    .line 708
    :cond_1e
    :goto_6
    const-string/jumbo p1, "onPointerEvent"

    .line 709
    .line 710
    .line 711
    const-string/jumbo v0, "task is invalid"

    .line 712
    .line 713
    .line 714
    invoke-static {p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    :cond_1f
    :goto_7
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    .line 718
    .line 719
    .line 720
    goto/16 :goto_e

    .line 721
    .line 722
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isAllowCornerGestureState()Z

    .line 723
    .line 724
    .line 725
    move-result v0

    .line 726
    if-nez v0, :cond_21

    .line 727
    .line 728
    return-void

    .line 729
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 730
    .line 731
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 732
    .line 733
    .line 734
    move-result p1

    .line 735
    if-nez p1, :cond_22

    .line 736
    .line 737
    return-void

    .line 738
    :cond_22
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 739
    .line 740
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 741
    .line 742
    if-eqz p1, :cond_23

    .line 743
    .line 744
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizableRect:Landroid/graphics/Rect;

    .line 745
    .line 746
    iget v1, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 747
    .line 748
    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 749
    .line 750
    invoke-virtual {v0, v6, v6, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 751
    .line 752
    .line 753
    :cond_23
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    .line 754
    .line 755
    const-string/jumbo v0, "task is relaunching, t="

    .line 756
    .line 757
    .line 758
    const-string v1, "findTargetTaskBounds: "

    .line 759
    .line 760
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 761
    .line 762
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 763
    .line 764
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 765
    .line 766
    .line 767
    monitor-enter v4

    .line 768
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 769
    .line 770
    new-instance v11, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;

    .line 771
    .line 772
    invoke-direct {v11, p0, v2, v3}, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiWindowPointerEventListener;II)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v5, v11}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskFromPointSearchResult;

    .line 779
    .line 780
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent$TaskFromPointSearchResult;->mTask:Lcom/android/server/wm/Task;

    .line 781
    .line 782
    if-nez v5, :cond_24

    .line 783
    .line 784
    const-string p1, "findTargetTaskBounds"

    .line 785
    .line 786
    const-string/jumbo v0, "task is null"

    .line 787
    .line 788
    .line 789
    invoke-static {p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 794
    .line 795
    .line 796
    goto/16 :goto_c

    .line 797
    .line 798
    :catchall_0
    move-exception p0

    .line 799
    goto/16 :goto_f

    .line 800
    .line 801
    :cond_24
    :try_start_1
    const-string v11, "MultiWindowPointerEventListener"

    .line 802
    .line 803
    new-instance v12, Ljava/lang/StringBuilder;

    .line 804
    .line 805
    invoke-direct {v12, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 809
    .line 810
    .line 811
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v1

    .line 815
    invoke-static {v11, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    .line 817
    .line 818
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    .line 819
    .line 820
    .line 821
    move-result v1

    .line 822
    if-nez v1, :cond_25

    .line 823
    .line 824
    const-string p1, "findTargetTaskBounds"

    .line 825
    .line 826
    const-string v0, "activity type is not standard"

    .line 827
    .line 828
    invoke-static {p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 832
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 833
    .line 834
    .line 835
    goto/16 :goto_c

    .line 836
    .line 837
    :cond_25
    :try_start_2
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    .line 838
    .line 839
    .line 840
    move-result v1

    .line 841
    if-eqz v1, :cond_26

    .line 842
    .line 843
    const-string p1, "findTargetTaskBounds"

    .line 844
    .line 845
    const-string/jumbo v0, "task animating by recents"

    .line 846
    .line 847
    .line 848
    invoke-static {p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 852
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 853
    .line 854
    .line 855
    goto/16 :goto_c

    .line 856
    .line 857
    :cond_26
    :try_start_3
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 858
    .line 859
    .line 860
    move-result v1

    .line 861
    if-ne v1, v7, :cond_31

    .line 862
    .line 863
    invoke-virtual {v5, v7, v6}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    if-eqz v1, :cond_27

    .line 868
    .line 869
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    .line 870
    .line 871
    .line 872
    move-result v1

    .line 873
    if-eqz v1, :cond_27

    .line 874
    .line 875
    const-string p1, "findTargetTaskBounds"

    .line 876
    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    .line 878
    .line 879
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    iget v0, v5, Lcom/android/server/wm/Task;->mTaskId:I

    .line 883
    .line 884
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    invoke-static {p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    .line 893
    .line 894
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 895
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 896
    .line 897
    .line 898
    goto/16 :goto_c

    .line 899
    .line 900
    :cond_27
    :try_start_4
    invoke-virtual {v5, p1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 901
    .line 902
    .line 903
    iget v0, v5, Lcom/android/server/wm/Task;->mTaskId:I

    .line 904
    .line 905
    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    .line 906
    .line 907
    iput-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTask:Lcom/android/server/wm/Task;

    .line 908
    .line 909
    invoke-virtual {v5, v7}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    .line 910
    .line 911
    .line 912
    move-result v0

    .line 913
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    .line 914
    .line 915
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 916
    .line 917
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 918
    .line 919
    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 920
    .line 921
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    .line 922
    .line 923
    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    .line 924
    .line 925
    .line 926
    move-result-object v11

    .line 927
    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 928
    .line 929
    .line 930
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    .line 931
    .line 932
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 933
    .line 934
    .line 935
    move-result v11

    .line 936
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 937
    .line 938
    .line 939
    move-result v12

    .line 940
    or-int/2addr v11, v12

    .line 941
    invoke-virtual {v0, v1, v11, v6}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 946
    .line 947
    .line 948
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    .line 949
    .line 950
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 951
    .line 952
    .line 953
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    .line 954
    .line 955
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 956
    .line 957
    iget v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideFullscreenDimViewMargin:I

    .line 958
    .line 959
    add-int/2addr v1, v6

    .line 960
    iget v11, v0, Landroid/graphics/Rect;->right:I

    .line 961
    .line 962
    sub-int/2addr v11, v6

    .line 963
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 964
    .line 965
    sub-int/2addr v0, v6

    .line 966
    invoke-virtual {p1, v1, v6, v11, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 967
    .line 968
    .line 969
    iget v0, v5, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 970
    .line 971
    iget v1, v5, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 972
    .line 973
    if-lez v0, :cond_28

    .line 974
    .line 975
    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    .line 976
    .line 977
    goto :goto_8

    .line 978
    :cond_28
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizableTask:I

    .line 979
    .line 980
    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    .line 981
    .line 982
    :goto_8
    if-lez v1, :cond_29

    .line 983
    .line 984
    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    .line 985
    .line 986
    goto :goto_9

    .line 987
    :cond_29
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizableTask:I

    .line 988
    .line 989
    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    .line 990
    .line 991
    :goto_9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY_DRAG:Z

    .line 992
    .line 993
    if-eqz v0, :cond_2a

    .line 994
    .line 995
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->interceptFindTargetTaskBounds(Landroid/graphics/Rect;)Z

    .line 996
    .line 997
    .line 998
    move-result p1

    .line 999
    if-eqz p1, :cond_2a

    .line 1000
    .line 1001
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1002
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1003
    .line 1004
    .line 1005
    goto :goto_b

    .line 1006
    :cond_2a
    :try_start_5
    iget p1, v5, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 1007
    .line 1008
    const/4 v0, 0x7

    .line 1009
    if-eq p1, v9, :cond_2b

    .line 1010
    .line 1011
    if-eq p1, v8, :cond_2b

    .line 1012
    .line 1013
    if-ne p1, v0, :cond_30

    .line 1014
    .line 1015
    :cond_2b
    if-eq p1, v8, :cond_2f

    .line 1016
    .line 1017
    if-eq p1, v9, :cond_2e

    .line 1018
    .line 1019
    if-eq p1, v0, :cond_2c

    .line 1020
    .line 1021
    goto :goto_a

    .line 1022
    :cond_2c
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    .line 1023
    .line 1024
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 1025
    .line 1026
    .line 1027
    move-result p1

    .line 1028
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    .line 1029
    .line 1030
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 1031
    .line 1032
    .line 1033
    move-result v0

    .line 1034
    if-le p1, v0, :cond_2d

    .line 1035
    .line 1036
    move v7, v10

    .line 1037
    :cond_2d
    iput v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    .line 1038
    .line 1039
    goto :goto_a

    .line 1040
    :cond_2e
    iput v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    .line 1041
    .line 1042
    goto :goto_a

    .line 1043
    :cond_2f
    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    .line 1044
    .line 1045
    :cond_30
    :goto_a
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1046
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1047
    .line 1048
    .line 1049
    :goto_b
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 1050
    .line 1051
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    .line 1052
    .line 1053
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1054
    .line 1055
    .line 1056
    goto :goto_d

    .line 1057
    :cond_31
    :try_start_6
    const-string p1, "findTargetTaskBounds"

    .line 1058
    .line 1059
    const-string/jumbo v0, "task is not docked or full"

    .line 1060
    .line 1061
    .line 1062
    invoke-static {p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1066
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1067
    .line 1068
    .line 1069
    :goto_c
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    .line 1070
    .line 1071
    .line 1072
    :goto_d
    iput v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStartX:I

    .line 1073
    .line 1074
    iput v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStartY:I

    .line 1075
    .line 1076
    :cond_32
    :goto_e
    return-void

    .line 1077
    :goto_f
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1078
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1079
    .line 1080
    .line 1081
    throw p0
.end method

.method public final reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskFromPointSearchResult;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/android/server/wm/DisplayContent$TaskFromPointSearchResult;->mTask:Lcom/android/server/wm/Task;

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    .line 8
    .line 9
    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTask:Lcom/android/server/wm/Task;

    .line 10
    .line 11
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY_DRAG:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSizeCompatDragPolicy:Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 16
    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    iput-boolean v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    .line 19
    .line 20
    iput v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    .line 21
    .line 22
    iput-boolean v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    .line 23
    .line 24
    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    .line 25
    .line 26
    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    .line 27
    .line 28
    iput-boolean v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAdjustedMinimalTaskBounds:Z

    .line 29
    .line 30
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_RESIZE_VIEW:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->dismiss()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 42
    .line 43
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final vibrate(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    const-string v5, "Swipe for pop-up view"

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHapticFeedback(IILjava/lang/String;Ljava/lang/String;ZZ)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method
