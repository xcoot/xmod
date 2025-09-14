.class public final Lcom/samsung/android/camera/CameraServiceWorker$DeviceStateListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceStateListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 6

    .line 1
    const-string v0, "Fold state changed, "

    .line 2
    .line 3
    const-string v1, "Fold state changed, "

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceStateListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 10
    .line 11
    iget-object v3, v3, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v3

    .line 14
    :try_start_0
    const-string v4, "CameraService_worker"

    .line 15
    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    sget-object v1, Lcom/samsung/android/camera/Logger$ID;->FOLD_EVENT:Lcom/samsung/android/camera/Logger$ID;

    .line 32
    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v1, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    const/4 p1, 0x3

    .line 50
    if-eq v2, p1, :cond_2

    .line 51
    .line 52
    const/4 p1, 0x2

    .line 53
    if-ne v2, p1, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-wide/16 v0, 0x6

    .line 57
    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceStateListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 61
    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChange(J)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/4 p1, 0x1

    .line 67
    if-ne v2, p1, :cond_3

    .line 68
    .line 69
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceStateListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 70
    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChange(J)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceStateListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 76
    .line 77
    const-wide/16 v0, 0x0

    .line 78
    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChange(J)V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_1
    return-void

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    throw p0
.end method
