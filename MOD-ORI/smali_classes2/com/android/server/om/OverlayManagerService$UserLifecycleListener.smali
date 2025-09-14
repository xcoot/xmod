.class public final Lcom/android/server/om/OverlayManagerService$UserLifecycleListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$UserLifecycleListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUserCreated(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .locals 5

    .line 1
    const-string p2, "OMS#onUserCreated "

    .line 2
    .line 3
    const-string v0, "Updating overlays for onUserCreated "

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isMain()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 14
    .line 15
    const-wide/32 v1, 0x4000000

    .line 16
    .line 17
    .line 18
    :try_start_0
    const-string v3, "OverlayManager"

    .line 19
    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {v1, v2, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$UserLifecycleListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 51
    .line 52
    iget-object p2, p2, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    :try_start_1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$UserLifecycleListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Landroid/util/ArraySet;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Set;)Landroid/util/SparseArray;

    .line 64
    .line 65
    .line 66
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    :catchall_1
    move-exception p0

    .line 75
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :cond_0
    :goto_0
    return-void
.end method
