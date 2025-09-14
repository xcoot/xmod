.class public final Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;


# virtual methods
.method public final ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 3
    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 11
    if-nez v0, :cond_1

    .line 13
    check-cast v1, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 15
    iget-boolean p0, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 17
    if-eqz p0, :cond_0

    .line 19
    const-string p0, "ContentSuggestionsPerUserService"

    .line 21
    const-string/jumbo v0, "ensureRemoteServiceLocked(): not set"

    .line 24
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 32
    move-result-object v3

    .line 33
    new-instance v10, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 35
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v2

    .line 39
    new-instance v5, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;

    .line 41
    invoke-direct {v5, p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;-><init>(Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;)V

    .line 44
    move-object v0, v1

    .line 45
    check-cast v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 47
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    .line 50
    move-result v0

    .line 51
    check-cast v1, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 53
    iget-boolean v8, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 55
    invoke-virtual {v2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 58
    move-result-object v6

    .line 59
    if-eqz v0, :cond_2

    .line 61
    const/high16 v0, 0x400000

    .line 63
    :goto_0
    move v7, v0

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v0, 0x0

    .line 66
    goto :goto_0

    .line 67
    :goto_1
    const/4 v9, 0x1

    .line 68
    const-string v4, "android.service.contentsuggestions.ContentSuggestionsService"

    .line 70
    iget v11, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 72
    move-object v0, v10

    .line 73
    move-object v1, v2

    .line 74
    move-object v2, v4

    .line 75
    move v4, v11

    .line 76
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    .line 79
    iput-object v10, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 81
    :cond_3
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 83
    return-object p0
.end method

.method public final newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 4
    move-result-object v0

    .line 5
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 7
    const-wide/16 v1, 0x80

    .line 9
    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object p1, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 15
    const-string v0, "android.permission.BIND_CONTENT_SUGGESTIONS_SERVICE"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    const-string v0, "ContentSuggestionsService from \'"

    .line 28
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string p0, "\' does not require permission android.permission.BIND_CONTENT_SUGGESTIONS_SERVICE"

    .line 38
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    const-string p1, "ContentSuggestionsPerUserService"

    .line 47
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance p0, Ljava/lang/SecurityException;

    .line 52
    const-string p1, "Service does not require permission android.permission.BIND_CONTENT_SUGGESTIONS_SERVICE"

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p0

    .line 58
    :catch_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 60
    const-string v0, "Could not get service for "

    .line 62
    invoke-static {p1, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p0
.end method

.method public final updateLocked(Z)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 15
    :cond_0
    return p1
.end method
