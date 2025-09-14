.class public final Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;


# instance fields
.field public mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

.field public mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final destroyAndRebindRemoteService()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 9
    .line 10
    const-string v2, "WallpaperEffectsGenerationPerUserService"

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    const-string v1, "Destroying the old remote service."

    .line 15
    .line 16
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    const-string v0, "Rebinding to the new remote service."

    .line 40
    .line 41
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->reconnect()V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    new-instance v1, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    iget-object v0, v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mTaskId:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {v1, v2, v0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;-><init>(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->invokeCinematicListenerAndCleanup(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    return-void
.end method

.method public final ensureRemoteServiceLocked()Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 10
    .line 11
    if-nez v3, :cond_1

    .line 12
    .line 13
    check-cast v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 14
    .line 15
    iget-boolean p0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const-string p0, "WallpaperEffectsGenerationPerUserService"

    .line 20
    .line 21
    const-string v0, "ensureRemoteServiceLocked(): not set"

    .line 22
    .line 23
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return-object p0

    .line 28
    :cond_1
    new-instance v8, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    move-object v1, v0

    .line 35
    check-cast v1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    check-cast v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 42
    .line 43
    iget-boolean v7, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 44
    .line 45
    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 46
    .line 47
    move-object v1, v8

    .line 48
    move-object v5, p0

    .line 49
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;ZZ)V

    .line 50
    .line 51
    .line 52
    iput-object v8, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 53
    .line 54
    :cond_2
    iget-object p0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 55
    .line 56
    return-object p0
.end method

.method public final invokeCinematicListenerAndCleanup(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .locals 7

    .line 1
    const-string v0, "]"

    .line 2
    .line 3
    const-string v1, "WallpaperEffectsGenerationPerUserService"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 6
    .line 7
    const-string v3, "Error invoking cinematic effect listener for task["

    .line 8
    .line 9
    const-string v4, "Cinematic effect listener not found for task["

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    .line 13
    .line 14
    if-eqz v6, :cond_0

    .line 15
    .line 16
    iget-object v6, v6, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mListener:Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    invoke-interface {v6, p1}, Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;->onCinematicEffectGenerated(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    iget-boolean p1, v2, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v4, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    .line 36
    .line 37
    iget-object v4, v4, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mTaskId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    iput-object v5, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    :try_start_1
    iget-boolean p1, v2, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    .line 65
    .line 66
    iget-object v2, v2, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mTaskId:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :goto_1
    return-void

    .line 83
    :goto_2
    iput-object v5, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    .line 84
    .line 85
    throw p1
.end method

.method public final newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 6
    .line 7
    const-wide/16 v1, 0x80

    .line 8
    .line 9
    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object p1, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "android.permission.BIND_WALLPAPER_EFFECTS_GENERATION_SERVICE"

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v0, "WallpaperEffectsGenerationService from \'"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p0, "\' does not require permission android.permission.BIND_WALLPAPER_EFFECTS_GENERATION_SERVICE"

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string p1, "WallpaperEffectsGenerationPerUserService"

    .line 46
    .line 47
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    new-instance p0, Ljava/lang/SecurityException;

    .line 51
    .line 52
    const-string p1, "Service does not require permission android.permission.BIND_WALLPAPER_EFFECTS_GENERATION_SERVICE"

    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :catch_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 59
    .line 60
    const-string v0, "Could not get service for "

    .line 61
    .line 62
    invoke-static {p1, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public final onServiceDied(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 2
    .line 3
    const-string p1, "WallpaperEffectsGenerationPerUserService"

    .line 4
    .line 5
    const-string/jumbo v0, "remote wallpaper effects generation service died"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->updateRemoteServiceLocked()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final updateLocked(Z)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->updateRemoteServiceLocked()V

    .line 6
    .line 7
    .line 8
    return p1
.end method

.method public final updateRemoteServiceLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v1, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iget-object v0, v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mTaskId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {v1, v2, v0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->invokeCinematicListenerAndCleanup(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
