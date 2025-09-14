.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/wm/Task;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;->f$3:[I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;->f$3:[I

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v3, p1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    iget-object v0, p1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 27
    .line 28
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 29
    .line 30
    invoke-virtual {p1, v1, v2, v0, v5}, Lcom/android/server/wm/TaskFragment;->startPausing$1(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZZ)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    aget p1, p0, v5

    .line 37
    .line 38
    add-int/2addr p1, v4

    .line 39
    aput p1, p0, v5

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    .line 43
    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->launchedFromHomeInTransientLaunch()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0, v5}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    if-eq p0, v1, :cond_1

    .line 61
    .line 62
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_1

    .line 75
    .line 76
    iget-object p1, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStartingProcessActivities:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string/jumbo v2, "remove "

    .line 89
    .line 90
    .line 91
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v2, " from mStartingProcessActivities"

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v2, "ActivityTaskManager"

    .line 107
    .line 108
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v4, v1}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 115
    .line 116
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 117
    .line 118
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda54;

    .line 119
    .line 120
    invoke-direct {v1, v0, p0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda54;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    .line 125
    .line 126
    :cond_1
    :goto_0
    return-void
.end method
