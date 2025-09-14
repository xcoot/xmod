.class public final Lcom/android/server/wm/DragState$2;
.super Lcom/android/server/wm/DragState$AnimationListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DragState;

.field public final synthetic val$scaleInAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragState;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/DragState$2;->this$0:Lcom/android/server/wm/DragState;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/DragState$2;->val$scaleInAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4
    .line 5
    const/4 p2, 0x3

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DragState$2;->val$scaleInAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "scale"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/wm/DragState$2;->this$0:Lcom/android/server/wm/DragState;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    .line 15
    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DragState$2;->this$0:Lcom/android/server/wm/DragState;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    const-string p0, "WindowManager"

    .line 23
    .line 24
    const-string/jumbo p1, "mSurfaceControl is null, animation cannot be updated."

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :try_start_1
    const-string/jumbo v2, "pivot_offset"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/lang/Float;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iget-object v3, p0, Lcom/android/server/wm/DragState$2;->this$0:Lcom/android/server/wm/DragState;

    .line 52
    .line 53
    iget v4, v3, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 54
    .line 55
    iget v5, v3, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 56
    .line 57
    sub-float/2addr v4, v5

    .line 58
    sub-float/2addr v4, v2

    .line 59
    iput v4, v3, Lcom/android/server/wm/DragState;->mCenterPivotOffsetX:F

    .line 60
    .line 61
    iget v4, v3, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 62
    .line 63
    iget v5, v3, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 64
    .line 65
    sub-float/2addr v4, v5

    .line 66
    sub-float/2addr v4, v2

    .line 67
    iput v4, v3, Lcom/android/server/wm/DragState;->mCenterPivotOffsetY:F

    .line 68
    .line 69
    iget-object v3, v3, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/Float;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Ljava/lang/Float;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    const/4 v5, 0x0

    .line 92
    const/4 v6, 0x0

    .line 93
    move-object v2, v1

    .line 94
    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/wm/DragState$2;->this$0:Lcom/android/server/wm/DragState;

    .line 98
    .line 99
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 100
    .line 101
    iget v0, p0, Lcom/android/server/wm/DragState;->mCenterPivotOffsetX:F

    .line 102
    .line 103
    iget p0, p0, Lcom/android/server/wm/DragState;->mCenterPivotOffsetY:F

    .line 104
    .line 105
    invoke-virtual {v1, p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :goto_0
    if-eqz v1, :cond_2

    .line 116
    .line 117
    :try_start_2
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :catchall_1
    move-exception p1

    .line 122
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    :goto_1
    throw p0
.end method
