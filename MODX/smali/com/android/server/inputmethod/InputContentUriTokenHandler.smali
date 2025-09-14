.class public final Lcom/android/server/inputmethod/InputContentUriTokenHandler;
.super Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mPermissionOwnerToken:Landroid/os/IBinder;

.field public final mSourceUid:I

.field public final mSourceUserId:I

.field public final mTargetPackage:Ljava/lang/String;

.field public final mTargetUserId:I

.field public final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/net/Uri;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 14
    iput-object p3, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    .line 16
    iput p1, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mSourceUid:I

    .line 18
    iput-object p2, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mTargetPackage:Ljava/lang/String;

    .line 20
    iput p4, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mSourceUserId:I

    .line 22
    iput p5, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mTargetUserId:I

    .line 24
    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 12
    throw v0
.end method

.method public final release()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 6
    if-nez v1, :cond_0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :try_start_1
    const-class v2, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 15
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 21
    iget-object v3, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 23
    iget-object v4, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    .line 25
    iget v5, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mSourceUserId:I

    .line 27
    check-cast v2, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 29
    const/4 v6, 0x1

    .line 30
    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :try_start_2
    iput-object v1, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_1
    move-exception v2

    .line 38
    iput-object v1, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 40
    throw v2

    .line 41
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    throw p0
.end method

.method public final take()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    const-class v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 14
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 20
    const-string v2, "InputContentUriTokenHandler"

    .line 22
    check-cast v1, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 24
    invoke-virtual {v1, v2}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    .line 27
    move-result-object v4

    .line 28
    iput-object v4, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 33
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :try_start_1
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    .line 37
    move-result-object v3

    .line 38
    iget v5, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mSourceUid:I

    .line 40
    iget-object v6, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mTargetPackage:Ljava/lang/String;

    .line 42
    iget-object v7, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    .line 44
    iget v9, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mSourceUserId:I

    .line 46
    iget v10, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mTargetUserId:I

    .line 48
    const/4 v8, 0x1

    .line 49
    invoke-interface/range {v3 .. v10}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    goto :goto_0

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p0

    .line 56
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    :goto_0
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    throw p0

    .line 68
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    throw p0
.end method
