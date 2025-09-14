.class public final Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;
.super Landroid/animation/ValueAnimator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/SurfaceAnimationRunner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    new-array p1, p1, [F

    .line 8
    .line 9
    fill-array-data p1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final getAnimationHandler()Landroid/animation/AnimationHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationHandler:Landroid/animation/AnimationHandler;

    .line 4
    .line 5
    return-object p0
.end method
