.class public final synthetic Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AnrController;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$2:Lcom/android/server/wm/WindowState;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AnrController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AnrController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/WindowState;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AnrController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-wide/16 v3, 0x40

    .line 13
    .line 14
    :try_start_0
    const-string v5, "dumpAnrStateLocked()"

    .line 15
    .line 16
    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v5, v0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 20
    .line 21
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 22
    .line 23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 24
    .line 25
    .line 26
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :try_start_1
    iget-object v6, v0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 28
    .line 29
    invoke-virtual {v6, v1, v2, p0}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 35
    .line 36
    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->saveANRState(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_0

    .line 49
    :catchall_1
    move-exception p0

    .line 50
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 51
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 52
    .line 53
    .line 54
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 55
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method
