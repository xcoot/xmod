.class public final Lcom/android/server/wm/DisplayPolicy$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mOnSwipeFromBottom:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

.field public final mOnSwipeFromLeft:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

.field public final mOnSwipeFromRight:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

.field public final mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayPolicy$1;I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    new-instance p1, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayPolicy$1;I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    new-instance p1, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayPolicy$1;I)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    new-instance p1, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    const/4 v0, 0x3

    .line 33
    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayPolicy$1;I)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromBottom:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    return-void
.end method

.method public static getControllableInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Insets;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    sget-object p0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, p0, v1}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method


# virtual methods
.method public final onSwipeFromBottom()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy$1;->getControllableInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Insets;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    .line 15
    .line 16
    if-lez v2, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;Z)V

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final onSwipeFromLeft()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy$1;->getControllableInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Insets;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget v2, v2, Landroid/graphics/Insets;->left:I

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x1

    .line 30
    if-lez v2, :cond_0

    .line 31
    .line 32
    move v2, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v2, v3

    .line 35
    :goto_0
    if-nez v2, :cond_2

    .line 36
    .line 37
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 38
    .line 39
    iget-boolean v5, v5, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    .line 40
    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 44
    .line 45
    iget-object v5, v5, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 46
    .line 47
    iget-object v6, v5, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    .line 48
    .line 49
    aget v6, v6, v3

    .line 50
    .line 51
    float-to-int v6, v6

    .line 52
    iget-object v5, v5, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    .line 53
    .line 54
    aget v3, v5, v3

    .line 55
    .line 56
    float-to-int v3, v3

    .line 57
    invoke-virtual {v0, v6, v3}, Landroid/graphics/Region;->contains(II)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 65
    .line 66
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    .line 67
    .line 68
    invoke-virtual {p0, v2, v4}, Lcom/android/server/wm/DisplayPolicy$1;->requestTransientBarsForSideSwipe(Lcom/android/server/wm/WindowState;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_3

    .line 74
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 75
    .line 76
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    .line 77
    .line 78
    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;Z)V

    .line 79
    .line 80
    .line 81
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p0
.end method

.method public final onSwipeFromRight()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy$1;->getControllableInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Insets;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget v2, v2, Landroid/graphics/Insets;->right:I

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    if-lez v2, :cond_0

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v2, v3

    .line 34
    :goto_0
    if-nez v2, :cond_2

    .line 35
    .line 36
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 37
    .line 38
    iget-boolean v4, v4, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 43
    .line 44
    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 45
    .line 46
    iget-object v5, v4, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    .line 47
    .line 48
    aget v5, v5, v3

    .line 49
    .line 50
    float-to-int v5, v5

    .line 51
    iget-object v4, v4, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    .line 52
    .line 53
    aget v3, v4, v3

    .line 54
    .line 55
    float-to-int v3, v3

    .line 56
    invoke-virtual {v0, v5, v3}, Landroid/graphics/Region;->contains(II)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 64
    .line 65
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    .line 66
    .line 67
    const/4 v3, 0x2

    .line 68
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/DisplayPolicy$1;->requestTransientBarsForSideSwipe(Lcom/android/server/wm/WindowState;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_3

    .line 74
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 75
    .line 76
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    .line 77
    .line 78
    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;Z)V

    .line 79
    .line 80
    .line 81
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p0
.end method

.method public final onSwipeFromTop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mMultiWindowPointerEventListener:Lcom/android/server/wm/MultiWindowPointerEventListener;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v2, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isAllowCornerGestureState()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy$1;->getControllableInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Insets;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget v2, v2, Landroid/graphics/Insets;->top:I

    .line 45
    .line 46
    if-lez v2, :cond_2

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 v2, 0x0

    .line 51
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;Z)V

    .line 52
    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
.end method

.method public final requestTransientBarsForSideSwipe(Lcom/android/server/wm/WindowState;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy;->mEdgeEnabled:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 9
    .line 10
    iget-boolean v3, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 11
    .line 12
    if-eqz v3, :cond_3

    .line 13
    .line 14
    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 15
    .line 16
    if-eqz v3, :cond_3

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 37
    .line 38
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 39
    .line 40
    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 41
    .line 42
    if-ge v1, v0, :cond_3

    .line 43
    .line 44
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 45
    .line 46
    iget-object p2, p1, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 47
    .line 48
    if-nez p2, :cond_2

    .line 49
    .line 50
    iput-boolean v2, p1, Lcom/android/server/wm/DisplayPolicy;->mSkipTransferTouchToStatusBar:Z

    .line 51
    .line 52
    iget-object p2, p1, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 53
    .line 54
    :cond_2
    invoke-virtual {p1, p2, v2}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;Z)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 58
    .line 59
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mSkipTransferTouchToStatusBar:Z

    .line 60
    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mSkipTransferTouchToStatusBar:Z

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    if-ne v0, p1, :cond_4

    .line 74
    .line 75
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 76
    .line 77
    if-ne v0, p2, :cond_4

    .line 78
    .line 79
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;Z)V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_2
    return-void
.end method
