.class public final Lcom/android/server/wm/PopOverController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final POP_OVER_DIM_AMOUNT_FOR_CHILD:F = 0.13f

.field static final POP_OVER_DIM_AMOUNT_FOR_NIGHT:F = 0.5f

.field static final POP_OVER_DIM_DURATION:J = 0x96L


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final updatePopOverDimAttributesLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mPopOverDimmerNeeded:Z

    .line 3
    .line 4
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimBehind:I

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 17
    .line 18
    and-int/lit8 p0, p0, 0x20

    .line 19
    .line 20
    const-wide/16 v2, 0x96

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 25
    .line 26
    or-int/2addr p0, v1

    .line 27
    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 28
    .line 29
    const/high16 p0, 0x3f000000    # 0.5f

    .line 30
    .line 31
    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 32
    .line 33
    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 45
    .line 46
    or-int/2addr p0, v1

    .line 47
    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 48
    .line 49
    const p0, 0x3e051eb8    # 0.13f

    .line 50
    .line 51
    .line 52
    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 53
    .line 54
    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 58
    .line 59
    and-int/lit8 p0, p0, -0x3

    .line 60
    .line 61
    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 62
    .line 63
    iget p0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimAmount:F

    .line 64
    .line 65
    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 66
    .line 67
    iget-wide v2, p1, Lcom/android/server/wm/WindowState;->mOriginalDimDuration:J

    .line 68
    .line 69
    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 70
    .line 71
    :goto_0
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 72
    .line 73
    and-int/2addr p0, v1

    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    const/4 p0, 0x1

    .line 77
    iput-boolean p0, p1, Lcom/android/server/wm/WindowState;->mPopOverDimmerNeeded:Z

    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public final updateTransparency(Lcom/android/server/wm/WindowState;Z)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x1

    .line 16
    new-array v1, v1, [Z

    .line 17
    .line 18
    aput-boolean v0, v1, v0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v3, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    invoke-direct {v3, p0, v1, p2, p1}, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PopOverController;[ZZLcom/android/server/wm/WindowState;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 30
    .line 31
    .line 32
    aget-boolean p1, v1, v0

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 41
    .line 42
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast p1, Lcom/android/server/policy/PhoneWindowManager;

    .line 55
    .line 56
    iget-object v0, p1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v2, 0x0

    .line 60
    const-string v4, "Pop-over transparent mode"

    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHapticFeedback(IILjava/lang/String;Ljava/lang/String;ZZ)Z

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_0
    return-void
.end method
