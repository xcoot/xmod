.class public final Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClientChannel:Landroid/view/InputChannel;

.field public final mInputSurface:Landroid/view/SurfaceControl;

.field public mIsIntercepting:Z

.field public final mWindowHandle:Landroid/view/InputWindowHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/view/SurfaceControl;Landroid/view/InputChannel;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p4, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mClientChannel:Landroid/view/InputChannel;

    .line 6
    iput-object p3, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    .line 8
    new-instance v0, Landroid/view/InputWindowHandle;

    .line 10
    new-instance v1, Landroid/view/InputApplicationHandle;

    .line 12
    sget v2, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    .line 14
    int-to-long v2, v2

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {v1, v4, p1, v2, v3}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 19
    invoke-direct {v0, v1, p2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    .line 22
    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 24
    iput-object p1, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 26
    invoke-virtual {p4}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 29
    move-result-object p1

    .line 30
    iput-object p1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 32
    const/16 p1, 0x7df

    .line 34
    iput p1, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 36
    iput-wide v2, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 38
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 41
    move-result p1

    .line 42
    iput p1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 44
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 47
    move-result p1

    .line 48
    iput p1, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 50
    const/high16 p1, 0x3f800000    # 1.0f

    .line 52
    iput p1, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 54
    const p1, 0xc00c

    .line 57
    iput p1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 59
    invoke-virtual {v0, v4}, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V

    .line 62
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    .line 64
    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 67
    const/4 p2, 0x1

    .line 68
    invoke-virtual {v0, p1, p3, p2}, Landroid/view/InputWindowHandle;->setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 71
    invoke-virtual {p1, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 74
    const/4 p2, 0x2

    .line 75
    invoke-virtual {p1, p3, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 78
    const/4 p2, 0x0

    .line 79
    invoke-virtual {p1, p3, p2, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 82
    invoke-virtual {p1, p3, v4}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 85
    invoke-virtual {p1, p3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 88
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 91
    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mIsIntercepting:Z

    .line 94
    return-void
.end method
