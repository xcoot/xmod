.class public final Lcom/android/server/display/VolumeController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDlnaController:Lcom/android/server/display/DlnaController;

.field public final mHandler:Landroid/os/Handler;

.field public final mKeyMap:Ljava/util/Map;

.field public mMaxVolume:I

.field public mMinVolume:I

.field public mMuted:Z

.field public mVolume:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/display/DlnaController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/VolumeController;->mDlnaController:Lcom/android/server/display/DlnaController;

    .line 7
    .line 8
    new-instance p1, Lcom/android/server/display/VolumeController$1;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/android/server/display/VolumeController$1;-><init>(Lcom/android/server/display/VolumeController;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/display/VolumeController;->mKeyMap:Ljava/util/Map;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final setVolumeKeyEvent(I)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const-string v0, "VOLUME_KEY_DOWN"

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    const-string v0, "VOLUME_KEY_UP"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v0, 0x2

    .line 14
    if-ne p1, v0, :cond_2

    .line 15
    .line 16
    const-string v0, "VOLUME_MUTE"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 v0, 0x3

    .line 20
    if-ne p1, v0, :cond_3

    .line 21
    .line 22
    const-string v0, "VOLUME_UNMUTE"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    const-string v0, ""

    .line 26
    .line 27
    :goto_0
    const-string/jumbo v1, "sendDeviceVolumeKeyEvent : "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "VolumeController"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/display/VolumeController;->mDlnaController:Lcom/android/server/display/DlnaController;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/hardware/display/SemDlnaDevice;->isConnected()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/display/VolumeController;->mKeyMap:Ljava/util/Map;

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v0, Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    new-instance v0, Lcom/android/server/display/VolumeController$2;

    .line 75
    .line 76
    invoke-direct {v0, p0, p1}, Lcom/android/server/display/VolumeController$2;-><init>(Lcom/android/server/display/VolumeController;I)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_4
    const/4 p0, 0x0

    .line 86
    throw p0
.end method
