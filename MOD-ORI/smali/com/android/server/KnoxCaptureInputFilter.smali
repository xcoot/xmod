.class public final Lcom/android/server/KnoxCaptureInputFilter;
.super Landroid/view/InputFilter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public activeScanDeviceId:I

.field public final context:Landroid/content/Context;

.field public final scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

.field public final scannerDevices:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/KnoxCaptureInputFilter;

    .line 2
    .line 3
    const-string/jumbo v0, "ro.build.type"

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string/jumbo v1, "user"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    xor-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    sput-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter;->context:Landroid/content/Context;

    .line 12
    .line 13
    const-string p1, "ScanEventThread"

    .line 14
    .line 15
    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p0, p1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;-><init>(Lcom/android/server/KnoxCaptureInputFilter;Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    .line 29
    .line 30
    new-instance p1, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Received event: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", policyFlags=0x"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "KnoxCaptureInputFilter"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    instance-of v0, p1, Landroid/view/KeyEvent;

    .line 45
    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v0, Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    check-cast p1, Landroid/view/KeyEvent;

    .line 67
    .line 68
    iget p2, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    .line 69
    .line 70
    const/4 v0, -0x1

    .line 71
    if-ne p2, v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    iput p2, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    .line 78
    .line 79
    :cond_2
    iget-object p2, p0, Lcom/android/server/KnoxCaptureInputFilter;->scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    .line 80
    .line 81
    const/16 v0, 0x354

    .line 82
    .line 83
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-nez p2, :cond_3

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    iget v1, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    .line 97
    .line 98
    if-ne p2, v1, :cond_3

    .line 99
    .line 100
    iget-object p2, p0, Lcom/android/server/KnoxCaptureInputFilter;->scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    .line 101
    .line 102
    new-instance v1, Landroid/view/KeyEvent;

    .line 103
    .line 104
    invoke-direct {v1, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 105
    .line 106
    .line 107
    const/16 p1, 0x353

    .line 108
    .line 109
    invoke-static {p2, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    .line 115
    .line 116
    :cond_3
    iget-object p0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    .line 117
    .line 118
    const-wide/16 p1, 0x64

    .line 119
    .line 120
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 125
    .line 126
    .line 127
    :cond_5
    :goto_0
    return-void
.end method

.method public final onInstalled()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "KnoxCaptureInputFilter"

    .line 6
    .line 7
    const-string v1, "KnoxCapture input filter installed"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onUninstalled()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "KnoxCaptureInputFilter"

    .line 6
    .line 7
    const-string v1, "KnoxCapture input filter uninstalled"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
