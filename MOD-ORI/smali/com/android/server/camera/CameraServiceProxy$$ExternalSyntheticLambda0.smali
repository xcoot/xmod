.class public final synthetic Lcom/android/server/camera/CameraServiceProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/16 v0, 0x3c

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter p1

    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    .line 26
    .line 27
    or-int/lit8 v1, v1, 0x4

    .line 28
    .line 29
    iput v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    .line 30
    .line 31
    iget v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastReportedDeviceState:I

    .line 32
    .line 33
    if-eq v1, v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetriesLocked(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit p1

    .line 42
    goto :goto_3

    .line 43
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter p1

    .line 48
    :try_start_1
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 51
    .line 52
    .line 53
    iget v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    .line 54
    .line 55
    and-int/lit8 v1, v1, -0x5

    .line 56
    .line 57
    iput v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    .line 58
    .line 59
    iget v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastReportedDeviceState:I

    .line 60
    .line 61
    if-eq v1, v2, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetriesLocked(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catchall_1
    move-exception p0

    .line 68
    goto :goto_4

    .line 69
    :cond_2
    :goto_2
    monitor-exit p1

    .line 70
    :goto_3
    return-void

    .line 71
    :goto_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    throw p0
.end method
