.class public final synthetic Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$$ExternalSyntheticLambda0;->f$0:Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$$ExternalSyntheticLambda0;->f$0:Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;

    .line 2
    .line 3
    check-cast p1, Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;->onGenerateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
