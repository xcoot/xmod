.class public final Lcom/android/server/usb/UsbAlsaJackDetector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "UsbAlsaJackDetector"


# instance fields
.field public mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

.field public mStopJackDetect:Z


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbAlsaDevice;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mStopJackDetect:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    .line 8
    .line 9
    return-void
.end method

.method private static native nativeHasJackDetect(I)Z
.end method

.method private native nativeInputJackConnected(I)Z
.end method

.method private native nativeJackDetect(I)Z
.end method

.method private native nativeOutputJackConnected(I)Z
.end method

.method public static startJackDetect(Lcom/android/server/usb/UsbAlsaDevice;)Lcom/android/server/usb/UsbAlsaJackDetector;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->nativeHasJackDetect(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance v0, Lcom/android/server/usb/UsbAlsaJackDetector;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbAlsaJackDetector;-><init>(Lcom/android/server/usb/UsbAlsaDevice;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Ljava/lang/Thread;

    .line 17
    .line 18
    const-string v1, "USB jack detect thread"

    .line 19
    .line 20
    invoke-direct {p0, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public final isInputJackConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->nativeInputJackConnected(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isOutputJackConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->nativeOutputJackConnected(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final jackDetectCallback()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mStopJackDetect:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return v1

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    .line 12
    .line 13
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    const/4 v2, 0x1

    .line 15
    :try_start_1
    invoke-virtual {v0, v2, v2}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 16
    .line 17
    .line 18
    :try_start_2
    monitor-exit v0

    .line 19
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    .line 20
    .line 21
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :try_start_3
    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(IZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 23
    .line 24
    .line 25
    :try_start_4
    monitor-exit v0

    .line 26
    monitor-exit p0

    .line 27
    return v2

    .line 28
    :catchall_1
    move-exception v1

    .line 29
    monitor-exit v0

    .line 30
    throw v1

    .line 31
    :catchall_2
    move-exception v1

    .line 32
    monitor-exit v0

    .line 33
    throw v1

    .line 34
    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 35
    throw v0
.end method

.method public final pleaseStop()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mStopJackDetect:Z

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    throw v0
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->nativeJackDetect(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method
