.class public final Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

.field public final synthetic val$wallpaper:Lcom/android/server/wallpaper/WallpaperData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;Lcom/android/server/wallpaper/WallpaperData;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string/jumbo p1, "onWallpaperChanged threw an exception"

    .line 2
    .line 3
    .line 4
    const-string v0, "WallpaperManagerService"

    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->$r8$classId:I

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 18
    .line 19
    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    :try_start_0
    invoke-interface {p0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void

    .line 37
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 44
    .line 45
    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    .line 51
    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    :try_start_1
    invoke-interface {p0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catch_1
    move-exception p0

    .line 59
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_1
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
