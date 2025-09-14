.class public final Lcom/android/server/wm/RecentTasks$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/RecentTasks;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RecentTasks;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x4

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    float-to-int v1, v1

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    float-to-int p1, p1

    .line 35
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 38
    .line 39
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGesutreHintOn:Z

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 55
    .line 56
    new-instance v3, Landroid/graphics/Rect;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    const/4 v5, 0x1

    .line 70
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 75
    .line 76
    .line 77
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 78
    .line 79
    if-lt p1, v2, :cond_2

    .line 80
    .line 81
    const-string p0, "ActivityTaskManager"

    .line 82
    .line 83
    const-string/jumbo p1, "skip PointerEvent to keep mFreezeTaskListReordering"

    .line 84
    .line 85
    .line 86
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    .line 91
    .line 92
    iget-object v2, v2, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 93
    .line 94
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 95
    .line 96
    new-instance v3, Lcom/android/server/wm/RecentTasks$1$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/server/wm/RecentTasks$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RecentTasks$1;III)V

    .line 99
    .line 100
    .line 101
    const/4 p0, 0x0

    .line 102
    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    .line 112
    .line 113
    :cond_3
    :goto_1
    return-void
.end method
