.class public final Lcom/android/server/profcollect/ProfcollectForwardingService$4;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method public constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$4;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "Received camera open event from: "

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "ProfcollectForwardingService"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const-string p1, "client.pid"

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    const-string p1, "com.google.android.as"

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p1, "camera_trace_freq"

    .line 38
    .line 39
    const/16 p2, 0xa

    .line 40
    .line 41
    const-string/jumbo v0, "profcollect_native_boot"

    .line 42
    .line 43
    .line 44
    invoke-static {v0, p1, p2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const/16 v0, 0x64

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-lt p2, p1, :cond_1

    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance p2, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    const/4 v0, 0x5

    .line 72
    invoke-direct {p2, v0, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    const-wide/16 v0, 0x3e8

    .line 76
    .line 77
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method
