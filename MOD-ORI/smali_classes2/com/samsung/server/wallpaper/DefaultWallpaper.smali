.class public final Lcom/samsung/server/wallpaper/DefaultWallpaper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/samsung/server/wallpaper/DefaultWallpaper$1;

.field public final mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

.field public final mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public static -$$Nest$msetSettingsSystemUiTransparency(Lcom/samsung/server/wallpaper/DefaultWallpaper;ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "setSettingsSystemUiTransparency : "

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " name="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "DefaultWallpaper"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/4 v0, -0x2

    .line 39
    invoke-static {p0, p2, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;Landroid/app/SemWallpaperResourcesInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;-><init>(Lcom/samsung/server/wallpaper/DefaultWallpaper;Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Lcom/samsung/server/wallpaper/DefaultWallpaper$1;

    .line 14
    .line 15
    const-string v0, "DefaultWallpaper"

    .line 16
    .line 17
    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 25
    .line 26
    iput-object p4, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final getDefaultWallpaperUri(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "android.resource://com.samsung.android.wallpaper.res/drawable/"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultImageFileName(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v0, "getDefaultWallpaperUri: defaultWallpaper = "

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "DefaultWallpaper"

    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object p0
.end method

.method public final updateTransparencySettingIfNeed(ILjava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "com.sec.android.app.desktoplauncher"

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eq p2, v1, :cond_2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "com.samsung.android.themecenter"

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eq v0, v1, :cond_2

    .line 24
    .line 25
    const-string/jumbo v0, "service.odtcfactory.sec.com.odtcfactoryservice"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eq v0, v1, :cond_2

    .line 33
    .line 34
    const-string v0, "com.samsung.android.app.dressroom"

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eq p2, v1, :cond_2

    .line 41
    .line 42
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Lcom/samsung/server/wallpaper/DefaultWallpaper$1;

    .line 47
    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    const/16 p2, 0x3ec

    .line 51
    .line 52
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iput p3, p2, Landroid/os/Message;->arg1:I

    .line 57
    .line 58
    iput p1, p2, Landroid/os/Message;->arg2:I

    .line 59
    .line 60
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_2

    .line 68
    .line 69
    const/16 p2, 0x3ee

    .line 70
    .line 71
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iput p3, p2, Landroid/os/Message;->arg1:I

    .line 76
    .line 77
    iput p1, p2, Landroid/os/Message;->arg2:I

    .line 78
    .line 79
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    .line 81
    .line 82
    :cond_2
    return-void
.end method
