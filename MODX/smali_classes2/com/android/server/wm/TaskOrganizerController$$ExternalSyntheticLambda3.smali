.class public final synthetic Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, [I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    .line 11
    .line 12
    check-cast p1, Lcom/android/server/wm/Task;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    .line 40
    .line 41
    check-cast p1, Lcom/android/server/wm/Task;

    .line 42
    .line 43
    iget-boolean v1, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    xor-int/2addr v1, v2

    .line 47
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iput-boolean v2, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    .line 62
    .line 63
    iget-object v1, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    iget-object v1, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance v0, Landroid/view/SurfaceControl;

    .line 82
    .line 83
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 84
    .line 85
    const-string v2, "TaskOrganizerController.registerTaskOrganizer"

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Landroid/window/TaskAppearedInfo;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {v1, p1, v0}, Landroid/window/TaskAppearedInfo;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_2
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
