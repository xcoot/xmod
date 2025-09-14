.class public final Lcom/android/server/input/GestureMonitorSpyWindow;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClientChannel:Landroid/view/InputChannel;

.field public final mInputSurface:Landroid/view/SurfaceControl;

.field public final mMonitorToken:Landroid/os/IBinder;

.field public final mWindowHandle:Landroid/view/InputWindowHandle;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/view/SurfaceControl;Landroid/view/InputChannel;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mMonitorToken:Landroid/os/IBinder;

    .line 5
    .line 6
    iput-object p7, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mClientChannel:Landroid/view/InputChannel;

    .line 7
    .line 8
    iput-object p6, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mInputSurface:Landroid/view/SurfaceControl;

    .line 9
    .line 10
    new-instance p1, Landroid/view/InputApplicationHandle;

    .line 11
    .line 12
    sget v0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    .line 13
    .line 14
    int-to-long v0, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {p1, v2, p2, v0, v1}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Landroid/view/InputWindowHandle;

    .line 20
    .line 21
    invoke-direct {v3, p1, p3}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    .line 22
    .line 23
    .line 24
    iput-object v3, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 25
    .line 26
    iput-object p2, v3, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p7}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iput-object p0, v3, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 33
    .line 34
    const/16 p0, 0x7df

    .line 35
    .line 36
    iput p0, v3, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 37
    .line 38
    iput-wide v0, v3, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 39
    .line 40
    iput p4, v3, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 41
    .line 42
    iput p5, v3, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 43
    .line 44
    const/high16 p0, 0x3f800000    # 1.0f

    .line 45
    .line 46
    iput p0, v3, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 47
    .line 48
    invoke-virtual {v3, v2}, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V

    .line 49
    .line 50
    .line 51
    const/16 p0, 0x4004

    .line 52
    .line 53
    iput p0, v3, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 54
    .line 55
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    .line 56
    .line 57
    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    invoke-virtual {v3, p0, p6, p1}, Landroid/view/InputWindowHandle;->setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p6, v3}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p6, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    invoke-virtual {p0, p6, p1, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p6, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 81
    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method public final dump()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "name=\'"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 10
    .line 11
    iget-object v1, v1, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "\', inputChannelToken="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mClientChannel:Landroid/view/InputChannel;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " displayId="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/input/GestureMonitorSpyWindow;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 36
    .line 37
    iget p0, p0, Landroid/view/InputWindowHandle;->displayId:I

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method
