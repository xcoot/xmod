.class public final synthetic Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda0;->f$0:I

    .line 6
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda0;->f$0:I

    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 5
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 7
    sget v1, Lcom/android/server/am/ActivityManagerService$LocalService;->$r8$clinit:I

    .line 9
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 11
    if-ne v1, v0, :cond_2

    .line 13
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 15
    iget-object v0, p1, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 17
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p1, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v1

    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 31
    :goto_0
    if-ltz v1, :cond_1

    .line 33
    iget-object v2, p1, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 41
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 43
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 53
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 55
    goto :goto_3

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 65
    goto :goto_2

    .line 66
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 70
    throw p0

    .line 71
    :cond_2
    :goto_2
    const/4 p0, 0x0

    .line 72
    :goto_3
    return-object p0
.end method
