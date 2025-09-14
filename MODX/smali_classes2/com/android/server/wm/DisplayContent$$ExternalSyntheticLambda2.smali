.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RecentsAnimationController;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:Landroid/graphics/Matrix;

.field public final synthetic f$4:[F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentsAnimationController;Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Matrix;[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;->f$1:Ljava/util/Set;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;->f$2:Ljava/util/Set;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;->f$3:Landroid/graphics/Matrix;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;->f$4:[F

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;->f$1:Ljava/util/Set;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;->f$2:Ljava/util/Set;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;->f$3:Landroid/graphics/Matrix;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;->f$4:[F

    .line 10
    .line 11
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 17
    .line 18
    invoke-virtual {v0, v5}, Lcom/android/server/wm/RecentsAnimationController;->shouldApplyInputConsumer(Lcom/android/server/wm/ActivityRecord;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    .line 38
    .line 39
    invoke-virtual {p1, v0, v3, p0}, Lcom/android/server/wm/WindowState;->getRectsInScreenSpace(Ljava/util/List;Landroid/graphics/Matrix;[F)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    .line 47
    .line 48
    invoke-virtual {p1, v0, v3, p0}, Lcom/android/server/wm/WindowState;->getRectsInScreenSpace(Ljava/util/List;Landroid/graphics/Matrix;[F)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {v2, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 53
    .line 54
    .line 55
    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 56
    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->getEffectiveTouchableRegion(Landroid/graphics/Region;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda20;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda20;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p0, v0}, Lcom/android/server/wm/utils/RegionUtils;->forEachRect(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/graphics/Region;->recycle()V

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 79
    .line 80
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    if-ne p0, v0, :cond_2

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-ne p0, v0, :cond_2

    .line 90
    .line 91
    move v4, v0

    .line 92
    :cond_2
    :goto_0
    return v4
.end method
