.class public final Lcom/android/server/wm/RotationWatcherController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisplayRotationWatchers:Ljava/util/ArrayList;

.field public volatile mHasProposedRotationListeners:Z

.field public final mProposedRotationListeners:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/wm/RotationWatcherController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    return-void
.end method

.method public static unregister(Landroid/view/IRotationWatcher;Ljava/util/ArrayList;)Z
    .locals 5

    .line 1
    invoke-interface {p0}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    sub-int/2addr v0, v1

    .line 11
    :goto_0
    const/4 v2, 0x0

    .line 12
    if-ltz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;

    .line 19
    .line 20
    iget-object v4, v3, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    .line 21
    .line 22
    invoke-interface {v4}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    if-eq p0, v4, :cond_0

    .line 27
    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object p0, v3, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    .line 35
    .line 36
    invoke-interface {p0}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-interface {p0, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_1
    return v2
.end method


# virtual methods
.method public final dispatchProposedRotation(ILcom/android/server/wm/DisplayContent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_4

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;->mToken:Landroid/os/IBinder;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/RotationWatcherController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 29
    .line 30
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowContextListenerController:Lcom/android/server/wm/WindowContextListenerController;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    iget-object v2, v2, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 43
    .line 44
    :goto_1
    move-object v3, v2

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    const/4 v2, 0x0

    .line 47
    goto :goto_1

    .line 48
    :goto_2
    if-eqz v3, :cond_2

    .line 49
    .line 50
    iget-object v2, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 51
    .line 52
    if-ne v2, p2, :cond_3

    .line 53
    .line 54
    :try_start_0
    iget-object v1, v1, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    .line 55
    .line 56
    invoke-interface {v1, p1}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    xor-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    iput-boolean v2, p0, Lcom/android/server/wm/RotationWatcherController;->mHasProposedRotationListeners:Z

    .line 74
    .line 75
    iget-object v2, v1, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    .line 76
    .line 77
    invoke-interface {v2}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const/4 v3, 0x0

    .line 82
    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 83
    .line 84
    .line 85
    :catch_0
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    return-void
.end method

.method public final registerDisplayRotationWatcher(Landroid/view/IRotationWatcher;I)V
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v1, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    .line 24
    .line 25
    invoke-interface {v2}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eq v0, v2, :cond_0

    .line 30
    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string p1, "Registering existed rotation watcher"

    .line 37
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_1
    new-instance v1, Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/wm/RotationWatcherController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 45
    .line 46
    invoke-direct {v1, v2, p1, p2}, Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;I)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    :try_start_0
    invoke-interface {v0, v1, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    :catch_0
    return-void
.end method

.method public final registerProposedRotationListener(Landroid/os/IBinder;Landroid/view/IRotationWatcher;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v1, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;

    .line 22
    .line 23
    iget-object v3, v2, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;->mToken:Landroid/os/IBinder;

    .line 24
    .line 25
    if-eq p1, v3, :cond_1

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    .line 28
    .line 29
    invoke-interface {v2}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-ne v0, v2, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string p1, "Register rotation listener to a registered token, uid="

    .line 42
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string p1, "WindowManager"

    .line 58
    .line 59
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    new-instance v1, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/android/server/wm/RotationWatcherController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 66
    .line 67
    invoke-direct {v1, v2, p2, p1}, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;Landroid/os/IBinder;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    .line 71
    .line 72
    const/4 p2, 0x0

    .line 73
    :try_start_0
    invoke-interface {v0, v1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    :catch_0
    iget-object p1, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    xor-int/lit8 p1, p1, 0x1

    .line 86
    .line 87
    iput-boolean p1, p0, Lcom/android/server/wm/RotationWatcherController;->mHasProposedRotationListeners:Z

    .line 88
    .line 89
    return-void
.end method
