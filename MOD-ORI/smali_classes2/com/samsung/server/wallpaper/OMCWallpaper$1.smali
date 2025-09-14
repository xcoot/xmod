.class public final Lcom/samsung/server/wallpaper/OMCWallpaper$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/OMCWallpaper;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;

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
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mhandleOMCWallpaperUpdatedLocked(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 15
    .line 16
    .line 17
    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    const/16 p1, 0x10

    .line 26
    .line 27
    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mhandleOMCWallpaperUpdatedLocked(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method
