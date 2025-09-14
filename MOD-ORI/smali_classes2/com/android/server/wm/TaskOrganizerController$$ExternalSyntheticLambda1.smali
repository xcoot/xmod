.class public final synthetic Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskOrganizerController;

.field public final synthetic f$1:Landroid/window/ITaskOrganizer;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TaskOrganizerController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;->f$1:Landroid/window/ITaskOrganizer;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TaskOrganizerController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;->f$1:Landroid/window/ITaskOrganizer;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-interface {v1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    aget-boolean v2, v2, v3

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-interface {v1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    int-to-long v2, p0

    .line 38
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 39
    .line 40
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    const/4 v8, 0x0

    .line 49
    const-wide v5, 0x17ac6f2129153930L

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    const/4 v7, 0x4

    .line 55
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object p0, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 61
    .line 62
    invoke-interface {p0}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    iget-object v1, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mDeathRecipient:Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-interface {p0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->dispose()V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method
