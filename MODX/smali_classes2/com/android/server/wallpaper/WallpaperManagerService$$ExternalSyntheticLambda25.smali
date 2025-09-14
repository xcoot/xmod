.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda25;->f$0:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda25;->f$0:Z

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    xor-int/lit8 p0, p0, 0x1

    .line 12
    .line 13
    :try_start_0
    invoke-interface {p1, p0}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string p1, "WallpaperManagerService"

    .line 19
    .line 20
    const-string v0, "Failed to set visibility"

    .line 21
    .line 22
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method
