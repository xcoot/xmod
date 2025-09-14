.class public final Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$1;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x5

    .line 5
    const-string v3, "SemFaceBrightManager"

    .line 7
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$1;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    .line 9
    if-eq v0, v1, :cond_1

    .line 11
    if-eq v0, v2, :cond_0

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    const-string v0, "Unknown message:"

    .line 17
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget p1, p1, Landroid/os/Message;->what:I

    .line 22
    invoke-static {p0, p1, v3}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string/jumbo p1, "handleMessage: MSG_BRIGHTNESS_READY_TO_SET_MAX"

    .line 29
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsReadyToSetMaxBrightness:Z

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v0, "handleMessage: MSG_BRIGHTNESS_LEVEL_UP "

    .line 41
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUpCorrected:I

    .line 46
    invoke-static {p1, v0, v3}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 49
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUpCorrected:I

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->setBrightness(I)V

    .line 54
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mHandlerBg:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$1;

    .line 56
    const-wide/16 v0, 0x1f4

    .line 58
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 61
    :goto_0
    return-void
.end method
