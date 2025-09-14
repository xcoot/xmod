.class public final synthetic Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;

.field public final synthetic f$1:Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;


# direct methods
.method public synthetic constructor <init>(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda1;->f$0:Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda1;->f$1:Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda1;->f$0:Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda1;->f$1:Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->getTaskId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    .line 15
    .line 16
    const-string v3, "]"

    .line 17
    .line 18
    const-string v4, "WallpaperEffectsGenerationPerUserService"

    .line 19
    .line 20
    iget-object v5, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-object v0, v2, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mTaskId:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    new-instance v0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    invoke-direct {v0, v2, v1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;-><init>(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v2, v1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;-><init>(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_0
    :try_start_0
    invoke-interface {p0, v0}, Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;->onCinematicEffectGenerated(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_0
    iget-boolean p0, v5, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 58
    .line 59
    if-eqz p0, :cond_4

    .line 60
    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v0, "RemoteException invoking cinematic effect listener for task["

    .line 64
    .line 65
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mTaskId:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {p0, p1, v3, v4}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    new-instance v3, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    invoke-direct {v3, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v3}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->executeOnResolvedService(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$$ExternalSyntheticLambda0;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    .line 91
    .line 92
    invoke-direct {v0, v1, p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;-><init>(Ljava/lang/String;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    iget-boolean p1, v5, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 99
    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    const-string p1, "Remote service not found"

    .line 103
    .line 104
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    :cond_3
    :try_start_1
    new-instance p1, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;

    .line 108
    .line 109
    const/4 v0, 0x0

    .line 110
    invoke-direct {p1, v0, v1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;-><init>(ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {p0, p1}, Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;->onCinematicEffectGenerated(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :catch_1
    iget-boolean p0, v5, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 122
    .line 123
    if-eqz p0, :cond_4

    .line 124
    .line 125
    const-string p0, "Failed to invoke cinematic effect listener for task ["

    .line 126
    .line 127
    invoke-static {p0, v1, v3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    :goto_1
    return-void
.end method
