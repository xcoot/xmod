.class public final Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;ZZ)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    const/high16 v0, 0x400000

    .line 8
    .line 9
    :goto_0
    move v7, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :goto_1
    const/4 v9, 0x1

    .line 14
    const-string v2, "android.service.wallpapereffectsgeneration.WallpaperEffectsGenerationService"

    .line 15
    .line 16
    move-object v0, p0

    .line 17
    move-object v1, p1

    .line 18
    move-object v3, p2

    .line 19
    move v4, p3

    .line 20
    move-object v5, p4

    .line 21
    move/from16 v8, p6

    .line 22
    .line 23
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    .line 24
    .line 25
    .line 26
    move-object v1, p4

    .line 27
    iput-object v1, v0, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->mCallback:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final executeOnResolvedService(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->executeAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getRemoteRequestMillis()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x7d0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getTimeoutIdleBindMillis()J
    .locals 2

    .line 1
    const-wide/32 v0, 0x1d4c0

    .line 2
    .line 3
    .line 4
    return-wide v0
.end method

.method public final handleOnConnectedStateChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->mCallback:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "WallpaperEffectsGenerationPerUserService"

    .line 13
    .line 14
    const-string/jumbo v0, "remote wallpaper effects generation service disconnected"

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->updateRemoteServiceLocked()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final reconnect()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleBind()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
