.class public final synthetic Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/color/ColorDisplayService;

.field public final synthetic f$1:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

.field public final synthetic f$2:Lcom/android/server/display/color/DisplayTransformManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/DisplayWhiteBalanceTintController;Lcom/android/server/display/color/DisplayTransformManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 6
    iput-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 8
    iput-object p3, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/display/color/DisplayTransformManager;

    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 3
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 5
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/display/color/DisplayTransformManager;

    .line 7
    iget-object v0, v0, Lcom/android/server/display/color/ColorDisplayService;->mCctTintApplierLock:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Integer;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result p1

    .line 20
    iget v2, v1, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mAppliedCct:I

    .line 22
    if-eq p1, v2, :cond_0

    .line 24
    invoke-virtual {v1, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->computeMatrixForCct(I)[F

    .line 27
    move-result-object v2

    .line 28
    const/16 v3, 0x7d

    .line 30
    invoke-virtual {p0, v3, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 33
    iput p1, v1, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mAppliedCct:I

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method
