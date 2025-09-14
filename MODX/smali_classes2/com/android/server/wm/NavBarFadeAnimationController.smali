.class public final Lcom/android/server/wm/NavBarFadeAnimationController;
.super Lcom/android/server/wm/FadeAnimationController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field public final mFadeInAnimation:Landroid/view/animation/Animation;

.field public mFadeInParent:Landroid/view/SurfaceControl;

.field public final mFadeOutAnimation:Landroid/view/animation/Animation;

.field public mFadeOutParent:Landroid/view/SurfaceControl;

.field public final mNavigationBar:Lcom/android/server/wm/WindowState;

.field public mPlaySequentially:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    invoke-direct {v0, v1, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/wm/NavBarFadeAnimationController;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 10
    .line 11
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 12
    .line 13
    const v3, 0x3e4ccccd    # 0.2f

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/android/server/wm/NavBarFadeAnimationController;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/wm/FadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mPlaySequentially:Z

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 12
    .line 13
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    .line 18
    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 22
    .line 23
    const-wide/16 v2, 0x10a

    .line 24
    .line 25
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 26
    .line 27
    .line 28
    sget-object v2, Lcom/android/server/wm/NavBarFadeAnimationController;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 34
    .line 35
    invoke-direct {p1, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeOutAnimation:Landroid/view/animation/Animation;

    .line 39
    .line 40
    const-wide/16 v0, 0x85

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 43
    .line 44
    .line 45
    sget-object p0, Lcom/android/server/wm/NavBarFadeAnimationController;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final createAdapter(Lcom/android/server/wm/FadeAnimationController$1;ZLcom/android/server/wm/WindowToken;)Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;

    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p3, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeInParent:Landroid/view/SurfaceControl;

    .line 10
    .line 11
    :goto_0
    move-object v5, p3

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object p3, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeOutParent:Landroid/view/SurfaceControl;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :goto_1
    move-object v0, v6

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p1

    .line 19
    move v4, p2

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;-><init>(Lcom/android/server/wm/NavBarFadeAnimationController;Lcom/android/server/wm/FadeAnimationController$1;Lcom/android/server/wm/SurfaceAnimationRunner;ZLandroid/view/SurfaceControl;)V

    .line 21
    .line 22
    .line 23
    return-object v6
.end method

.method public final fadeOutAndInSequentially(JLandroid/view/SurfaceControl;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mPlaySequentially:Z

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v0, p1, v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    const-wide/16 v0, 0x2

    .line 11
    .line 12
    mul-long/2addr v0, p1

    .line 13
    const-wide/16 v2, 0x3

    .line 14
    .line 15
    div-long/2addr v0, v2

    .line 16
    iget-object v2, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeOutAnimation:Landroid/view/animation/Animation;

    .line 17
    .line 18
    sub-long/2addr p1, v0

    .line 19
    invoke-virtual {v2, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeOutParent:Landroid/view/SurfaceControl;

    .line 29
    .line 30
    iput-object p3, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeInParent:Landroid/view/SurfaceControl;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/wm/NavBarFadeAnimationController;->fadeWindowToken(Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final fadeWindowToken(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/NavBarFadeAnimationController;Z)V

    .line 10
    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;->run()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 21
    .line 22
    iget-object v2, v0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    iget p0, p0, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    if-ne p0, v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iput-object v1, v0, Lcom/android/server/wm/AsyncRotationController;->mOnShowRunnable:Ljava/lang/Runnable;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;->run()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final getFadeInAnimation()Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFadeOutAnimation()Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeOutAnimation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-object p0
.end method
