.class public Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
.super Lcom/android/server/wm/LocalAnimationAdapter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mShow:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FadeAnimationController$1;Lcom/android/server/wm/SurfaceAnimationRunner;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->mShow:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public shouldDeferAnimationFinish()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->mShow:Z

    .line 2
    .line 3
    xor-int/lit8 p0, p0, 0x1

    .line 4
    .line 5
    return p0
.end method
