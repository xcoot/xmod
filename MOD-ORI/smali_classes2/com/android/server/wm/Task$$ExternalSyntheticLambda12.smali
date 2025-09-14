.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:Lcom/android/server/wm/Transition;

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/os/Bundle;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/Task;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;->f$1:Lcom/android/server/wm/Task;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;->f$2:Lcom/android/server/wm/Transition;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;->f$3:Landroid/os/Bundle;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;->f$4:Z

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;->f$5:I

    .line 15
    .line 16
    iput p7, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;->f$6:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .locals 10

    .line 1
    iget-object v3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;->f$3:Landroid/os/Bundle;

    .line 2
    .line 3
    iget-object v7, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;->f$1:Lcom/android/server/wm/Task;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;->f$2:Lcom/android/server/wm/Transition;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v7, v1}, Lcom/android/server/wm/Task;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    iget-object p1, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v2, v1, v0, v0}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 31
    .line 32
    .line 33
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowContainer;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_1

    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :cond_1
    move-object v8, v0

    .line 68
    iget-boolean v0, v7, Lcom/android/server/wm/Task;->mIsDragSourceTask:Z

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->setHideWhileTwoHandDragging(Lcom/android/server/wm/WindowContainer;)V

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    :goto_0
    move v9, v0

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    goto :goto_0

    .line 92
    :goto_1
    iget v5, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;->f$5:I

    .line 93
    .line 94
    iget v6, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;->f$6:I

    .line 95
    .line 96
    iget-boolean v4, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;->f$4:Z

    .line 97
    .line 98
    move-object v0, v7

    .line 99
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->moveTaskToBackInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/os/Bundle;ZII)V

    .line 100
    .line 101
    .line 102
    if-eqz p1, :cond_4

    .line 103
    .line 104
    if-nez v9, :cond_4

    .line 105
    .line 106
    if-eqz v8, :cond_4

    .line 107
    .line 108
    iget-object p0, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 109
    .line 110
    invoke-virtual {p0, v8}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string p1, "Failed to move task to back after saying we could: "

    .line 117
    .line 118
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget p1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const-string p1, "ActivityTaskManager"

    .line 131
    .line 132
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->abort()V

    .line 136
    .line 137
    .line 138
    :cond_4
    :goto_3
    return-void
.end method
