.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda26;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda26;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/io/File;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    iput-object p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 19
    .line 20
    sget-boolean p0, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 21
    .line 22
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    :try_start_0
    const-string v1, "android.wallpaper.keyguardgoingaway"

    .line 27
    .line 28
    new-instance v5, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 v4, -0x1

    .line 34
    const/4 v2, -0x1

    .line 35
    const/4 v3, -0x1

    .line 36
    invoke-interface/range {v0 .. v5}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string p1, "WallpaperManagerService"

    .line 42
    .line 43
    const-string v0, "Failed to notify that the keyguard is going away"

    .line 44
    .line 45
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
