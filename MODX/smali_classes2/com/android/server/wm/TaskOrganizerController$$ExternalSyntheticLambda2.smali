.class public final synthetic Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskOrganizerController;

.field public final synthetic f$1:Landroid/window/ITaskOrganizer;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/TaskOrganizerController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$1:Landroid/window/ITaskOrganizer;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$3:Ljava/util/ArrayList;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/TaskOrganizerController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$1:Landroid/window/ITaskOrganizer;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->f$3:Ljava/util/ArrayList;

    .line 8
    .line 9
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    aget-boolean v3, v3, v4

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    int-to-long v4, v2

    .line 28
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 29
    .line 30
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v11

    .line 38
    const/4 v10, 0x0

    .line 39
    const-wide v7, -0x877a5a0909bc4a9L    # -6.28201494567975E267

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const/4 v9, 0x4

    .line 45
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v3, v0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-interface {v1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_1

    .line 59
    .line 60
    iget-object v3, v0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    .line 61
    .line 62
    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    iget-object v3, v0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    .line 66
    .line 67
    invoke-interface {v1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    new-instance v5, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 72
    .line 73
    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    .line 80
    .line 81
    invoke-interface {v1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 94
    .line 95
    new-instance v2, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda3;

    .line 96
    .line 97
    const/4 v3, 0x0

    .line 98
    invoke-direct {v2, p0, v3, v1}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda3;-><init>(Ljava/util/ArrayList;ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method
