.class public final Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/NaturalSwitchingController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/NaturalSwitchingController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;->this$0:Lcom/android/server/wm/NaturalSwitchingController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    const-string v0, "binderDied: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;->this$0:Lcom/android/server/wm/NaturalSwitchingController;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    const-string v2, "NaturalSwitchingController"

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;->this$0:Lcom/android/server/wm/NaturalSwitchingController;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/wm/NaturalSwitchingController;->mClient:Landroid/os/IBinder;

    .line 23
    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;->this$0:Lcom/android/server/wm/NaturalSwitchingController;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->finishNaturalSwitching()V

    .line 37
    .line 38
    .line 39
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 47
    .line 48
    .line 49
    throw p0
.end method
