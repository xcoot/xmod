.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;ZLcom/android/server/wm/DisplayContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/RootWindowContainer;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/wm/DisplayContent;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/RootWindowContainer;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;->f$1:Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/Task;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;

    .line 20
    .line 21
    const/4 v3, 0x4

    .line 22
    invoke-direct {v1, v3}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;

    .line 29
    .line 30
    invoke-direct {v3, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {p1, v3, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 35
    .line 36
    .line 37
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/4 v4, 0x0

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 60
    .line 61
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-nez p0, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1, v4, v4, v2}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {p1, v1, v4}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method
