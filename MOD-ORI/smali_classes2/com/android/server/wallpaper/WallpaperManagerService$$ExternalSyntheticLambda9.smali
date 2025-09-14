.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 11
    .line 12
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 13
    .line 14
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->disconnectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :pswitch_0
    check-cast p0, Lcom/android/server/wallpaper/WallpaperData;

    .line 23
    .line 24
    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 25
    .line 26
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->disconnectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    check-cast p0, Lcom/android/server/wallpaper/WallpaperData;

    .line 35
    .line 36
    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 37
    .line 38
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 39
    .line 40
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    new-instance v6, Landroid/os/Bundle;

    .line 45
    .line 46
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string/jumbo v0, "which"

    .line 50
    .line 51
    .line 52
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 53
    .line 54
    invoke-virtual {v6, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 58
    .line 59
    const-string v2, "android.wallpaper.reapply"

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-interface/range {v1 .. v6}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    const-string p1, "WallpaperManagerService"

    .line 70
    .line 71
    const-string v0, "Error sending apply message to wallpaper"

    .line 72
    .line 73
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_0
    return-void

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
