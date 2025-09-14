.class public final Lcom/android/server/vibrator/InputDeviceDelegate;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputDeviceVibrators:Landroid/util/SparseArray;

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public final mLock:Ljava/lang/Object;

.field public mShouldVibrateInputDevices:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onInputDeviceAdded(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/InputDeviceDelegate;->updateInputDevice(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/InputDeviceDelegate;->updateInputDevice(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final updateInputDevice(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mShouldVibrateInputDevices:Z

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :cond_2
    invoke-virtual {v1}, Landroid/view/InputDevice;->getVibratorManager()Landroid/os/VibratorManager;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/os/VibratorManager;->getVibratorIds()[I

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    array-length v3, v3

    .line 40
    if-lez v3, :cond_3

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/InputDevice;->getId()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object p0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 55
    .line 56
    .line 57
    :goto_0
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method public final updateInputDeviceVibrators(Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return v2

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_2

    .line 13
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mShouldVibrateInputDevices:Z

    .line 14
    .line 15
    if-ne p1, v1, :cond_1

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return v2

    .line 19
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mShouldVibrateInputDevices:Z

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_4

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    invoke-virtual {p1, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    array-length v1, p1

    .line 42
    :goto_0
    if-ge v2, v1, :cond_5

    .line 43
    .line 44
    aget v3, p1, v2

    .line 45
    .line 46
    iget-object v4, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    .line 47
    .line 48
    invoke-virtual {v4, v3}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-nez v3, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v3}, Landroid/view/InputDevice;->getVibratorManager()Landroid/os/VibratorManager;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Landroid/os/VibratorManager;->getVibratorIds()[I

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    array-length v5, v5

    .line 64
    if-lez v5, :cond_3

    .line 65
    .line 66
    iget-object v5, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    iget-object p1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    .line 79
    .line 80
    invoke-virtual {p1, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 81
    .line 82
    .line 83
    :cond_5
    monitor-exit v0

    .line 84
    const/4 p0, 0x1

    .line 85
    return p0

    .line 86
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p0
.end method
