.class public final Lcom/android/server/uri/UriGrantsManagerService$LocalService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/uri/UriGrantsManagerInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/uri/UriGrantsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 7
    .line 8
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mcheckAuthorityGrantsLocked(Lcom/android/server/uri/UriGrantsManagerService;ILandroid/content/pm/ProviderInfo;IZ)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string p0, "checkGrantUriPermission"

    .line 7
    .line 8
    invoke-static {p0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v3, Lcom/android/server/uri/GrantUri;

    .line 15
    .line 16
    invoke-direct {v3, p5, p4, p3}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    .line 17
    .line 18
    .line 19
    const/4 v5, -0x1

    .line 20
    move v1, p1

    .line 21
    move-object v2, p2

    .line 22
    move v4, p4

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final checkUriPermission(Lcom/android/server/uri/GrantUri;IIZ)Z
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkContentUriPermissionFullUnlocked(Lcom/android/server/uri/GrantUri;II)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    iget-object p4, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 11
    .line 12
    iget-object p4, p4, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter p4

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    monitor-exit p4

    .line 22
    return p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    const/4 v0, 0x0

    .line 16
    move v7, v0

    .line 17
    :goto_0
    if-ge v7, v6, :cond_1

    .line 18
    .line 19
    iget-object v0, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    .line 20
    .line 21
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v3, v0

    .line 26
    check-cast v3, Lcom/android/server/uri/GrantUri;

    .line 27
    .line 28
    iget-object v2, p1, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    .line 29
    .line 30
    iget v4, p1, Lcom/android/server/uri/NeededUriGrants;->flags:I

    .line 31
    .line 32
    iget v1, p1, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    .line 33
    .line 34
    move-object v0, p0

    .line 35
    move-object v5, p2

    .line 36
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v7, v7, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    return-void
.end method

.method public final internalCheckGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;
    .locals 9

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    :goto_0
    move v5, v0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :goto_1
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    move v2, p2

    .line 15
    move-object v3, p3

    .line 16
    move-object v4, p1

    .line 17
    move v7, p4

    .line 18
    move-object v8, p5

    .line 19
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;ILjava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "newUriPermissionOwner"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/android/server/uri/UriPermissionOwner;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/android/server/uri/UriPermissionOwner;-><init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, v0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    new-instance p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;-><init>(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 24
    .line 25
    .line 26
    iput-object p0, v0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    .line 27
    .line 28
    :cond_0
    iget-object p0, v0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    .line 29
    .line 30
    return-object p0
.end method

.method public final removeUriPermissionsForPackage(ILjava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, p2, p3, v1, p1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;ZZI)V

    .line 10
    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final revokeUriPermission(IILcom/android/server/uri/GrantUri;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 13
    .line 14
    const/high16 v2, 0xc0000

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(IIILjava/lang/String;)Landroid/content/pm/ProviderInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    const-string p0, "UriGrantsManagerService"

    .line 23
    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p2, "No content provider found for permission revoke: "

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0, p0, p3, p1, p2}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    iget-object p0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter p0

    .line 53
    move-object v1, p4

    .line 54
    move v2, p1

    .line 55
    move-object v3, p3

    .line 56
    move v4, p2

    .line 57
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V

    .line 58
    .line 59
    .line 60
    monitor-exit p0

    .line 61
    :goto_0
    return-void

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p1
.end method

.method public final revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 7
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;IILjava/lang/String;I)V

    return-void
.end method

.method public final revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;IILjava/lang/String;I)V
    .locals 1

    .line 1
    instance-of p0, p1, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    move-object p0, p1

    check-cast p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    .line 3
    iget-object p0, p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;->this$0:Lcom/android/server/uri/UriPermissionOwner;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance v0, Lcom/android/server/uri/GrantUri;

    invoke-direct {v0, p4, p3, p2}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    .line 5
    :goto_1
    invoke-virtual {p0, p3, p6, v0, p5}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermission(IILcom/android/server/uri/GrantUri;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown owner: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
