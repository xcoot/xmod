.class public final Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/OMCWallpaper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;->this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;->this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "OMCWallpaperUpdatedReceiver : onReceive:"

    .line 13
    .line 14
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v0, "OMCWallpaper"

    .line 25
    .line 26
    invoke-static {v0, p2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p2, "com.samsung.intent.action.RSCUPDATE_START"

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mHandler:Lcom/samsung/server/wallpaper/OMCWallpaper$1;

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method
