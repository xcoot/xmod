.class public final Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mExitAnimatingTasks:Ljava/util/List;

.field public final mTransitionController:Lcom/android/server/wm/TransitionController;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/server/wm/TransitionController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->mExitAnimatingTasks:Ljava/util/List;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final handleExitAnimatingTasks(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->mExitAnimatingTasks:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/server/wm/Task;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v3, "handleExitAnimatingTasks: #"

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", reason="

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "MultiWindowEnableController"

    .line 50
    .line 51
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->mExitAnimatingTasks:Ljava/util/List;

    .line 56
    .line 57
    check-cast p1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final onAppTransitionCancelledLocked(Z)V
    .locals 0

    .line 1
    const-string p1, "Cancelled"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->handleExitAnimatingTasks(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    const-string p1, "Finished"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->handleExitAnimatingTasks(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAppTransitionTimeoutLocked()V
    .locals 1

    .line 1
    const-string v0, "Timeout"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->handleExitAnimatingTasks(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
