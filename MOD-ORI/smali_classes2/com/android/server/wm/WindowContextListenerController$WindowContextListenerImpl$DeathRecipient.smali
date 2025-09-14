.class public final Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->this$1:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->this$1:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->this$1:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->unregister()V

    .line 19
    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 29
    .line 30
    .line 31
    throw p0
.end method
