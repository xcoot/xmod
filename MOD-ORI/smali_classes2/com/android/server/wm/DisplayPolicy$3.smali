.class public final Lcom/android/server/wm/DisplayPolicy$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;

.field public final synthetic val$detector:Landroid/view/TwoFingerSwipeGestureDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;Landroid/view/TwoFingerSwipeGestureDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy$3;->val$detector:Landroid/view/TwoFingerSwipeGestureDetector;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCommitted(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 21
    .line 22
    iget-object v3, v2, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    aget v3, v3, v4

    .line 26
    .line 27
    float-to-int v3, v3

    .line 28
    iget-object v2, v2, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    .line 29
    .line 30
    aget v2, v2, v4

    .line 31
    .line 32
    float-to-int v2, v2

    .line 33
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Region;->contains(II)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x1

    .line 38
    xor-int/2addr v1, v2

    .line 39
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 40
    .line 41
    iget-object v5, v3, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-eqz v5, :cond_5

    .line 48
    .line 49
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FULL_TO_SPLIT_BY_GESTURE:Z

    .line 57
    .line 58
    const/4 v7, 0x3

    .line 59
    const/4 v8, 0x4

    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_1

    .line 69
    .line 70
    if-eq p1, v2, :cond_3

    .line 71
    .line 72
    if-eq p1, v7, :cond_3

    .line 73
    .line 74
    if-ne p1, v8, :cond_5

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 82
    .line 83
    if-ne v3, v2, :cond_2

    .line 84
    .line 85
    if-ne p1, v8, :cond_5

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    const/4 v5, 0x2

    .line 89
    if-ne v3, v5, :cond_5

    .line 90
    .line 91
    if-eq p1, v2, :cond_3

    .line 92
    .line 93
    if-ne p1, v7, :cond_5

    .line 94
    .line 95
    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    .line 96
    .line 97
    if-eq p1, v2, :cond_4

    .line 98
    .line 99
    if-eq p1, v7, :cond_4

    .line 100
    .line 101
    if-ne p1, v8, :cond_5

    .line 102
    .line 103
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 104
    .line 105
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 106
    .line 107
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;Z)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    goto :goto_2

    .line 113
    :cond_5
    :goto_1
    monitor-exit v0

    .line 114
    return-void

    .line 115
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0
.end method

.method public final onDetecting()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 13
    .line 14
    iget-boolean v2, v2, Lcom/android/server/wm/MultiTaskingController;->mIsFullToSplitEnabled:Z

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$3;->val$detector:Landroid/view/TwoFingerSwipeGestureDetector;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/TwoFingerSwipeGestureDetector;->cancel()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$3;->val$detector:Landroid/view/TwoFingerSwipeGestureDetector;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 35
    .line 36
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 37
    .line 38
    div-int/lit16 p0, p0, 0xa0

    .line 39
    .line 40
    int-to-float p0, p0

    .line 41
    const/16 v3, 0xd

    .line 42
    .line 43
    invoke-virtual {v2, v1, p0, v3}, Landroid/view/TwoFingerSwipeGestureDetector;->init(Landroid/graphics/Rect;FI)V

    .line 44
    .line 45
    .line 46
    :goto_0
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method
