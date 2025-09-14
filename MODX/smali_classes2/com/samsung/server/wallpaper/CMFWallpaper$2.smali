.class public final Lcom/samsung/server/wallpaper/CMFWallpaper$2;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/CMFWallpaper;Lcom/samsung/server/wallpaper/CMFWallpaper$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "cmf_color_code"

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string/jumbo v1, "setDeviceColor:"

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "CMFWallpaper"

    .line 51
    .line 52
    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;->getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object v1, v0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->setLegacyDeviceColor(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Lcom/samsung/server/wallpaper/DefaultWallpaper$1;

    .line 76
    .line 77
    const/16 p1, 0x3f0

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 80
    .line 81
    .line 82
    :cond_0
    return-void
.end method
