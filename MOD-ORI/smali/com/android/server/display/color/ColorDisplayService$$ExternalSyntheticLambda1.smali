.class public final synthetic Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/color/DisplayTransformManager;

.field public final synthetic f$1:Lcom/android/server/display/color/TintController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/color/DisplayTransformManager;Lcom/android/server/display/color/TintController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/color/DisplayTransformManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/display/color/TintController;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/color/DisplayTransformManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/display/color/TintController;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, [F

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->getLevel()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 16
    .line 17
    .line 18
    check-cast p1, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, [F

    .line 25
    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    array-length v1, p0

    .line 31
    if-ge v0, v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p1, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    .line 34
    .line 35
    aget v2, v1, v0

    .line 36
    .line 37
    aget v3, p0, v0

    .line 38
    .line 39
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    aput v2, v1, v0

    .line 44
    .line 45
    iget-object v1, p1, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    .line 46
    .line 47
    aget v2, v1, v0

    .line 48
    .line 49
    aget v3, p0, v0

    .line 50
    .line 51
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    aput v2, v1, v0

    .line 56
    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    :goto_1
    return-void
.end method
