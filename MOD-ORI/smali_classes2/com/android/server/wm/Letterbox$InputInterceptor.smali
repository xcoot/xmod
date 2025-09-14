.class public final Lcom/android/server/wm/Letterbox$InputInterceptor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mClientChannel:Landroid/view/InputChannel;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputEventReceiver:Lcom/android/server/wm/Letterbox$TapEventReceiver;

.field public final mToken:Landroid/os/IBinder;

.field public final mWindowHandle:Landroid/view/InputWindowHandle;

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;Lcom/android/server/wm/WindowState;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-static {p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object v2, p3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v2, p3

    .line 24
    :goto_0
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 32
    .line 33
    invoke-virtual {v2, p2}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iput-object v2, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 38
    .line 39
    new-instance v3, Lcom/android/server/wm/Letterbox$TapEventReceiver;

    .line 40
    .line 41
    invoke-direct {v3, p1, v2, v0, v1}, Lcom/android/server/wm/Letterbox$TapEventReceiver;-><init>(Lcom/android/server/wm/Letterbox;Landroid/view/InputChannel;Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V

    .line 42
    .line 43
    .line 44
    iput-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/Letterbox$TapEventReceiver;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/IBinder;

    .line 51
    .line 52
    new-instance v0, Landroid/view/InputWindowHandle;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    invoke-direct {v0, v1, p3}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 63
    .line 64
    iput-object p2, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 65
    .line 66
    iput-object p1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 67
    .line 68
    const/16 p0, 0x7e6

    .line 69
    .line 70
    iput p0, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 71
    .line 72
    sget p0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    .line 73
    .line 74
    int-to-long p0, p0

    .line 75
    iput-wide p0, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 76
    .line 77
    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 78
    .line 79
    iput p0, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 80
    .line 81
    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_UID:I

    .line 82
    .line 83
    iput p0, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 84
    .line 85
    const/high16 p0, 0x3f800000    # 1.0f

    .line 86
    .line 87
    iput p0, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 88
    .line 89
    const/16 p0, 0x404

    .line 90
    .line 91
    iput p0, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 92
    .line 93
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/Letterbox$TapEventReceiver;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
