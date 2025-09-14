.class public final synthetic Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;

    .line 22
    .line 23
    if-ne v2, v0, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 42
    .line 43
    .line 44
    throw p0
.end method
