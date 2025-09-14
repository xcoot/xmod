.class public final Lcom/samsung/server/wallpaper/OMCWallpaper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/samsung/server/wallpaper/OMCWallpaper$1;

.field public final mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/server/wallpaper/OMCWallpaper$1;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/samsung/server/wallpaper/OMCWallpaper$1;-><init>(Lcom/samsung/server/wallpaper/OMCWallpaper;Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mHandler:Lcom/samsung/server/wallpaper/OMCWallpaper$1;

    .line 14
    .line 15
    const-string v0, "OMCWallpaper"

    .line 16
    .line 17
    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final saveTSSActivationSettings(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-static {v0, v2, v1}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;ILjava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const-string/jumbo v0, "true"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string/jumbo p1, "tss_activated"

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method
