.class public final synthetic Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ShellRoot;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ShellRoot;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ShellRoot;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ShellRoot;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/ShellRoot;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/wm/ShellRoot;

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/wm/ShellRoot;->clear()V

    .line 33
    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 38
    .line 39
    .line 40
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void

    .line 45
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 47
    .line 48
    .line 49
    throw p0
.end method
