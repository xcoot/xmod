.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;III)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;->f$0:I

    .line 4
    .line 5
    iput p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;->f$1:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;->f$2:Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    const-string v0, "WallpaperManagerService"

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;->f$0:I

    .line 9
    .line 10
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;->f$1:I

    .line 11
    .line 12
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;->f$2:Landroid/os/Bundle;

    .line 13
    .line 14
    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 15
    .line 16
    sget-boolean p0, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 17
    .line 18
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    :try_start_0
    const-string v3, "android.wallpaper.goingtosleep"

    .line 23
    .line 24
    const/4 v6, -0x1

    .line 25
    invoke-interface/range {v2 .. v7}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    const-string p1, "Failed to dispatch COMMAND_GOING_TO_SLEEP"

    .line 31
    .line 32
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    return-void

    .line 36
    :pswitch_0
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;->f$0:I

    .line 37
    .line 38
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;->f$1:I

    .line 39
    .line 40
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;->f$2:Landroid/os/Bundle;

    .line 41
    .line 42
    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 43
    .line 44
    sget-boolean p0, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 45
    .line 46
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    :try_start_1
    const-string v2, "android.wallpaper.wakingup"

    .line 51
    .line 52
    const/4 v5, -0x1

    .line 53
    invoke-interface/range {v1 .. v6}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_1
    move-exception p0

    .line 58
    const-string p1, "Failed to dispatch COMMAND_WAKING_UP"

    .line 59
    .line 60
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_1
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
