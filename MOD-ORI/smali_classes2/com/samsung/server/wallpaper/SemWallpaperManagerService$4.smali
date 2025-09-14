.class public final Lcom/samsung/server/wallpaper/SemWallpaperManagerService$4;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$4;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x3f1

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$4;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->handleWallpaperBindingTimeout()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method
