.class public final Lcom/android/server/display/color/ColorDisplayService$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mIsCancelled:Z

.field public final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;

.field public final synthetic val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

.field public final synthetic val$from:I

.field public final synthetic val$tintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

.field public final synthetic val$to:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/DisplayWhiteBalanceTintController;IILcom/android/server/display/color/DisplayTransformManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$tintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$to:I

    .line 6
    .line 7
    iput p4, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$from:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$tintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, " animation cancelled"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "ColorDisplayService"

    .line 18
    .line 19
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->mIsCancelled:Z

    .line 24
    .line 25
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/display/color/ColorDisplayService;->mCctTintApplierLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    const-string v0, "ColorDisplayService"

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$tintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " animation ended: wasCancelled="

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/android/server/display/color/ColorDisplayService$4;->mIsCancelled:Z

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, " toCct="

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$to:I

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, " fromCct="

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$from:I

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->mIsCancelled:Z

    .line 64
    .line 65
    if-nez v0, :cond_0

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$tintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$tintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 75
    .line 76
    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$to:I

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->computeMatrixForCct(I)[F

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const/16 v2, 0x7d

    .line 83
    .line 84
    invoke-virtual {v0, v2, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$tintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 88
    .line 89
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$to:I

    .line 90
    .line 91
    iput v1, v0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mAppliedCct:I

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_1

    .line 96
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$tintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 97
    .line 98
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 100
    .line 101
    monitor-exit p1

    .line 102
    return-void

    .line 103
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p0
.end method
