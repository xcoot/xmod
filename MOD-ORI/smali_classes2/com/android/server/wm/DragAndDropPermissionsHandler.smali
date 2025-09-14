.class public final Lcom/android/server/wm/DragAndDropPermissionsHandler;
.super Lcom/android/internal/view/IDragAndDropPermissions$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActivityToken:Landroid/os/IBinder;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mMode:I

.field public mPermissionOwnerToken:Landroid/os/IBinder;

.field public final mSourceUid:I

.field public final mSourceUserId:I

.field public final mTargetPackage:Ljava/lang/String;

.field public final mTargetUserId:I

.field public final mUris:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/content/ClipData;ILjava/lang/String;III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 17
    .line 18
    iput p3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUid:I

    .line 19
    .line 20
    iput-object p4, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetPackage:Ljava/lang/String;

    .line 21
    .line 22
    iput p5, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    .line 23
    .line 24
    iput p6, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUserId:I

    .line 25
    .line 26
    iput p7, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetUserId:I

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final doTake(Landroid/os/IBinder;)V
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v2, v3, :cond_0

    .line 13
    .line 14
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    iget v6, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUid:I

    .line 19
    .line 20
    iget-object v7, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetPackage:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    move-object v8, v3

    .line 29
    check-cast v8, Landroid/net/Uri;

    .line 30
    .line 31
    iget v9, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    .line 32
    .line 33
    iget v10, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUserId:I

    .line 34
    .line 35
    iget v11, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetUserId:I

    .line 36
    .line 37
    move-object v5, p1

    .line 38
    invoke-interface/range {v4 .. v11}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public final finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->release()V

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method

.method public final getFlags()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    .line 2
    .line 3
    return p0
.end method

.method public final getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 3

    .line 1
    const-string v0, "Activity does not exist; token="

    .line 2
    .line 3
    const-string v1, "getUriPermissionOwnerForActivity"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 11
    .line 12
    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p1, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    new-instance v0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;-><init>(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p1, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    .line 34
    .line 35
    :cond_0
    iget-object p1, p1, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    .line 36
    .line 37
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public final release()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iput-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    iput-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 22
    .line 23
    throw v0

    .line 24
    :catch_0
    iput-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 30
    .line 31
    :goto_0
    const-class v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-ge v2, v3, :cond_2

    .line 47
    .line 48
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/net/Uri;

    .line 55
    .line 56
    iget v4, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    .line 57
    .line 58
    iget v5, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUserId:I

    .line 59
    .line 60
    move-object v6, v1

    .line 61
    check-cast v6, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 62
    .line 63
    invoke-virtual {v6, v0, v3, v4, v5}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 64
    .line 65
    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    return-void
.end method

.method public final take(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->doTake(Landroid/os/IBinder;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method public final takeTransient()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 17
    .line 18
    const-string v1, "drop"

    .line 19
    .line 20
    check-cast v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->doTake(Landroid/os/IBinder;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method
