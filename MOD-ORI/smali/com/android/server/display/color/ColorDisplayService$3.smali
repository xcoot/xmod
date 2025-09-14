.class public final Lcom/android/server/display/color/ColorDisplayService$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mIsCancelled:Z

.field public final synthetic val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

.field public final synthetic val$tintController:Lcom/android/server/display/color/TintController;

.field public final synthetic val$to:[F


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/TintController;[FLcom/android/server/display/color/DisplayTransformManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$tintController:Lcom/android/server/display/color/TintController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$to:[F

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->mIsCancelled:Z

    .line 3
    .line 4
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$tintController:Lcom/android/server/display/color/TintController;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " Animation cancelled: "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->mIsCancelled:Z

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " to matrix: "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$to:[F

    .line 37
    .line 38
    const/16 v2, 0x10

    .line 39
    .line 40
    invoke-static {v2, v1}, Lcom/android/server/display/color/TintController;->matrixToString(I[F)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, " min matrix coefficients: "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p1, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    .line 53
    .line 54
    invoke-static {v2, v1}, Lcom/android/server/display/color/TintController;->matrixToString(I[F)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, " max matrix coefficients: "

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object p1, p1, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    .line 67
    .line 68
    invoke-static {v2, p1}, Lcom/android/server/display/color/TintController;->matrixToString(I[F)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string v0, "ColorDisplayService"

    .line 80
    .line 81
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->mIsCancelled:Z

    .line 85
    .line 86
    if-nez p1, :cond_0

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$tintController:Lcom/android/server/display/color/TintController;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/android/server/display/color/TintController;->getLevel()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$to:[F

    .line 97
    .line 98
    invoke-virtual {p1, v0, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 99
    .line 100
    .line 101
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$tintController:Lcom/android/server/display/color/TintController;

    .line 102
    .line 103
    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 105
    .line 106
    return-void
.end method
