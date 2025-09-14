.class public final Lcom/android/server/companion/virtual/InputController$WaitForDevice;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

.field public mInputDeviceId:I

.field public final mListener:Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;III)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 12
    const/4 v0, -0x2

    .line 13
    iput v0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mInputDeviceId:I

    .line 15
    new-instance v0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;

    .line 17
    move-object v1, v0

    .line 18
    move-object v2, p0

    .line 19
    move-object v3, p2

    .line 20
    move v4, p3

    .line 21
    move v5, p4

    .line 22
    move v6, p5

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;-><init>(Lcom/android/server/companion/virtual/InputController$WaitForDevice;Ljava/lang/String;III)V

    .line 26
    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mListener:Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;

    .line 28
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    .line 31
    move-result-object p0

    .line 32
    iget-object p1, p1, Lcom/android/server/companion/virtual/InputController;->mHandler:Landroid/os/Handler;

    .line 34
    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManagerGlobal;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mListener:Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;

    .line 7
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManagerGlobal;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 10
    return-void
.end method

.method public final waitForDeviceCreation()I
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 5
    const-wide/16 v2, 0x1

    .line 7
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget v0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mInputDeviceId:I

    .line 15
    const/4 v1, -0x2

    .line 16
    if-eq v0, v1, :cond_0

    .line 18
    return v0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    const-string v2, "Virtual input device was created with an invalid id="

    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    iget p0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mInputDeviceId:I

    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0

    .line 41
    :cond_1
    :try_start_1
    new-instance p0, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    .line 43
    const-string v0, "Timed out waiting for virtual device to be created."

    .line 45
    invoke-direct {p0, v0}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    new-instance v0, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    .line 52
    const-string v1, "Interrupted while waiting for virtual device to be created."

    .line 54
    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    throw v0
.end method
