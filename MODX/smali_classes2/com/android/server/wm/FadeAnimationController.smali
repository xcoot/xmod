.class public abstract Lcom/android/server/wm/FadeAnimationController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/wm/FadeAnimationController;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public createAdapter(Lcom/android/server/wm/FadeAnimationController$1;ZLcom/android/server/wm/WindowToken;)Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;

    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;-><init>(Lcom/android/server/wm/FadeAnimationController$1;Lcom/android/server/wm/SurfaceAnimationRunner;Z)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public final fadeWindowToken(ZLcom/android/server/wm/WindowToken;Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda0;)V
    .locals 6

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeInAnimation()Landroid/view/animation/Animation;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeOutAnimation()Landroid/view/animation/Animation;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    if-eqz v0, :cond_2

    .line 22
    .line 23
    new-instance v1, Lcom/android/server/wm/FadeAnimationController$1;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lcom/android/server/wm/FadeAnimationController$1;-><init>(Landroid/view/animation/Animation;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/wm/FadeAnimationController;->createAdapter(Lcom/android/server/wm/FadeAnimationController$1;ZLcom/android/server/wm/WindowToken;)Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :goto_1
    move-object v2, p0

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    const/4 p0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :goto_2
    if-nez v2, :cond_3

    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    const-string p0, "fadeWindowToken, show="

    .line 40
    .line 41
    const-string v0, ", animationType="

    .line 42
    .line 43
    invoke-static {p0, v0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const/16 v4, 0x40

    .line 48
    .line 49
    invoke-static {v4}, Lcom/android/server/wm/SurfaceAnimator;->animationTypeToString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ", topWindow="

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", token="

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ", caller="

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const/4 v0, 0x5

    .line 82
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    const-string v0, "WindowManager"

    .line 94
    .line 95
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    move-object v0, p2

    .line 103
    move v3, p1

    .line 104
    move-object v5, p3

    .line 105
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    :goto_3
    return-void
.end method

.method public abstract getFadeInAnimation()Landroid/view/animation/Animation;
.end method

.method public abstract getFadeOutAnimation()Landroid/view/animation/Animation;
.end method
