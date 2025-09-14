.class public final Lcom/android/server/wm/WindowContainer$DeathRecipient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mOwner:Landroid/os/IBinder;

.field public final mSourceIds:Landroid/util/ArraySet;

.field public final synthetic this$0:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->this$0:Lcom/android/server/wm/WindowContainer;

    .line 5
    .line 6
    new-instance p2, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mSourceIds:Landroid/util/ArraySet;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mOwner:Landroid/os/IBinder;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->this$0:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mSourceIds:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    sub-int/2addr v1, v2

    .line 19
    const/4 v3, 0x0

    .line 20
    move v4, v3

    .line 21
    :goto_0
    if-ltz v1, :cond_2

    .line 22
    .line 23
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->this$0:Lcom/android/server/wm/WindowContainer;

    .line 24
    .line 25
    iget-object v6, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mSourceIds:Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    check-cast v6, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSources:Landroid/util/SparseArray;

    .line 38
    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    :goto_1
    move v5, v3

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v5, v2

    .line 51
    :goto_2
    or-int/2addr v4, v5

    .line 52
    add-int/lit8 v1, v1, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_3

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mSourceIds:Landroid/util/ArraySet;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mOwner:Landroid/os/IBinder;

    .line 63
    .line 64
    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->this$0:Lcom/android/server/wm/WindowContainer;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->-$$Nest$fgetmInsetsOwnerDeathRecipientMap(Lcom/android/server/wm/WindowContainer;)Landroid/util/ArrayMap;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mOwner:Landroid/os/IBinder;

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    if-eqz v4, :cond_3

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->this$0:Lcom/android/server/wm/WindowContainer;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 83
    .line 84
    if-eqz p0, :cond_3

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 87
    .line 88
    invoke-virtual {p0, v2}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    .line 89
    .line 90
    .line 91
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 98
    .line 99
    .line 100
    throw p0
.end method
