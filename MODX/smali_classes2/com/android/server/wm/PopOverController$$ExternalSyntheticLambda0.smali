.class public final synthetic Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PopOverController;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/wm/WindowState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PopOverController;[ZZLcom/android/server/wm/WindowState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PopOverController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$1:[Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/wm/WindowState;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PopOverController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$1:[Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$2:Z

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 15
    .line 16
    iget-boolean v3, v3, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-eqz v3, :cond_8

    .line 20
    .line 21
    iget-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_8

    .line 31
    .line 32
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 33
    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_1
    const/4 v4, 0x0

    .line 38
    aput-boolean v2, v1, v4

    .line 39
    .line 40
    if-ne p1, p0, :cond_2

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_2
    const/16 p0, 0x10

    .line 44
    .line 45
    invoke-virtual {p1, v4, p0}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 52
    .line 53
    .line 54
    :cond_3
    const p0, 0x3a83126f    # 0.001f

    .line 55
    .line 56
    .line 57
    const/high16 v1, 0x3f800000    # 1.0f

    .line 58
    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    move v3, v1

    .line 62
    goto :goto_0

    .line 63
    :cond_4
    move v3, p0

    .line 64
    :goto_0
    if-eqz v2, :cond_5

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    move p0, v1

    .line 68
    :goto_1
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 69
    .line 70
    invoke-direct {v1, v3, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 71
    .line 72
    .line 73
    const-wide/16 v5, 0x64

    .line 74
    .line 75
    if-eqz v2, :cond_6

    .line 76
    .line 77
    move-wide v7, v5

    .line 78
    goto :goto_2

    .line 79
    :cond_6
    const-wide/16 v7, 0xc8

    .line 80
    .line 81
    :goto_2
    invoke-virtual {v1, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 82
    .line 83
    .line 84
    if-eqz v2, :cond_7

    .line 85
    .line 86
    const-wide/16 v5, 0x0

    .line 87
    .line 88
    :cond_7
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 89
    .line 90
    .line 91
    new-instance v3, Lcom/android/server/wm/PopOverController$1;

    .line 92
    .line 93
    invoke-direct {v3, v0, v2, p1, p0}, Lcom/android/server/wm/PopOverController$1;-><init>(Lcom/android/server/wm/PopOverController;ZLcom/android/server/wm/WindowState;F)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    .line 100
    .line 101
    .line 102
    :cond_8
    :goto_3
    return v4
.end method
