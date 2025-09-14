.class public final Lcom/samsung/server/wallpaper/SubDisplayMode$2;
.super Landroid/view/IDisplayFoldListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/SubDisplayMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/IDisplayFoldListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayFoldChanged(IZ)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onDisplayFoldChanged: displayId = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string p1, ", folded = "

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "SubDisplayMode"

    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 30
    .line 31
    iget v0, p1, Lcom/samsung/server/wallpaper/SubDisplayMode;->mLidState:I

    .line 32
    .line 33
    xor-int/lit8 v1, p2, 0x1

    .line 34
    .line 35
    iput v1, p1, Lcom/samsung/server/wallpaper/SubDisplayMode;->mLidState:I

    .line 36
    .line 37
    const/4 v2, -0x1

    .line 38
    if-eq v1, v2, :cond_2

    .line 39
    .line 40
    if-eq v1, v0, :cond_2

    .line 41
    .line 42
    iget-object p1, p1, Lcom/samsung/server/wallpaper/SubDisplayMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->updateDisplayData()V

    .line 45
    .line 46
    .line 47
    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mHandler:Lcom/samsung/server/wallpaper/SubDisplayMode$1;

    .line 54
    .line 55
    const/16 p1, 0x3f2

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_0

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 71
    .line 72
    iput v1, p1, Landroid/os/Message;->arg2:I

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    if-nez p2, :cond_2

    .line 79
    .line 80
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/samsung/server/wallpaper/SubDisplayMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 83
    .line 84
    const/4 p2, 0x6

    .line 85
    invoke-virtual {p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 91
    .line 92
    const/4 p1, 0x5

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_0
    return-void
.end method
