.class public final Lcom/android/server/accessibility/FingerprintGestureDispatcher;
.super Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final mCapturingClients:Ljava/util/List;

.field public final mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

.field public final mHandler:Landroid/os/Handler;

.field public final mHardwareSupportsGestures:Z

.field public final mLock:Ljava/lang/Object;

.field public mRegisteredReadOnlyExceptInHandler:Z


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/IFingerprintService;Landroid/content/res/Resources;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 13
    .line 14
    const p1, 0x111019f

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput-boolean p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHardwareSupportsGestures:Z

    .line 22
    .line 23
    iput-object p3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance p1, Landroid/os/Handler;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "FingerprintGestureDispatcher"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne v0, v3, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 14
    .line 15
    invoke-interface {p1, p0}, Landroid/hardware/fingerprint/IFingerprintService;->addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    .line 16
    .line 17
    .line 18
    iput-boolean v3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_2

    .line 26
    :catch_0
    :try_start_1
    const-string p0, "Failed to register for fingerprint activity callbacks"

    .line 27
    .line 28
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :goto_1
    return v1

    .line 33
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_0
    const/4 v4, 0x2

    .line 38
    if-ne v0, v4, :cond_1

    .line 39
    .line 40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    :try_start_2
    iget-object p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 45
    .line 46
    invoke-interface {p1, p0}, Landroid/hardware/fingerprint/IFingerprintService;->removeClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    .line 48
    .line 49
    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    goto :goto_4

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    goto :goto_5

    .line 55
    :catch_1
    :try_start_3
    const-string p1, "Failed to unregister for fingerprint activity callbacks"

    .line 56
    .line 57
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :goto_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z

    .line 62
    .line 63
    return v3

    .line 64
    :goto_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v0, "Unknown message: "

    .line 71
    .line 72
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget p1, p1, Landroid/os/Message;->what:I

    .line 76
    .line 77
    invoke-static {p0, p1, v2}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return v1
.end method

.method public final onClientActiveChanged(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHardwareSupportsGestures:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    .line 11
    .line 12
    check-cast v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge v1, v2, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    .line 21
    .line 22
    check-cast v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;

    .line 29
    .line 30
    xor-int/lit8 v3, p1, 0x1

    .line 31
    .line 32
    invoke-interface {v2, v3}, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;->onFingerprintGestureDetectionActiveChanged(Z)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method
