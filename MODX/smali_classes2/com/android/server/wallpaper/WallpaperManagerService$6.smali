.class public final Lcom/android/server/wallpaper/WallpaperManagerService$6;
.super Landroid/app/UserSwitchObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$6;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$6;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/android/server/wallpaper/WallpaperManagerService;->sWallpaperType:Ljava/util/Map;

    .line 9
    .line 10
    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda23;

    .line 11
    .line 12
    invoke-direct {v2, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$6;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
