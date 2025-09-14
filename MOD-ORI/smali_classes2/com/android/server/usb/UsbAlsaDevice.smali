.class public final Lcom/android/server/usb/UsbAlsaDevice;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DIRECTION_STR:[Ljava/lang/String;


# instance fields
.field public final mAlsaCardDeviceString:Ljava/lang/String;

.field public final mAudioService:Landroid/media/IAudioService;

.field public final mCardNum:I

.field public final mDeviceAddress:Ljava/lang/String;

.field public mDeviceName:Ljava/lang/String;

.field public final mDeviceType:[I

.field public final mHasDevice:[Z

.field public mHasJackDetect:Z

.field public final mIsDock:Z

.field public final mIsHeadset:[Z

.field public final mIsSelected:[Z

.field public mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

.field public final mState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "INPUT"

    .line 2
    .line 3
    const-string v1, "OUTPUT"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/media/IAudioService;ILjava/lang/String;ZZZZZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v1, v0, [Z

    .line 6
    .line 7
    iput-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    .line 8
    .line 9
    new-array v2, v0, [Z

    .line 10
    .line 11
    iput-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    .line 12
    .line 13
    new-array v3, v0, [I

    .line 14
    .line 15
    iput-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    .line 16
    .line 17
    new-array v4, v0, [Z

    .line 18
    .line 19
    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    .line 20
    .line 21
    new-array v0, v0, [I

    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mState:[I

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasJackDetect:Z

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    .line 33
    .line 34
    iput p2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    .line 35
    .line 36
    iput-object p3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    .line 37
    .line 38
    aput-boolean p4, v1, v0

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    aput-boolean p5, v1, p1

    .line 42
    .line 43
    aput-boolean p6, v2, p1

    .line 44
    .line 45
    aput-boolean p7, v2, v0

    .line 46
    .line 47
    iput-boolean p8, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    .line 48
    .line 49
    aget-boolean p2, v1, p1

    .line 50
    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    if-eqz p6, :cond_0

    .line 54
    .line 55
    const/high16 p2, -0x7e000000

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const p2, -0x7ffff000

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move p2, p1

    .line 63
    :goto_0
    aput p2, v3, p1

    .line 64
    .line 65
    aget-boolean p2, v1, v0

    .line 66
    .line 67
    if-eqz p2, :cond_4

    .line 68
    .line 69
    if-eqz p8, :cond_2

    .line 70
    .line 71
    const/16 p1, 0x1000

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    if-eqz p7, :cond_3

    .line 75
    .line 76
    const/high16 p1, 0x4000000

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const/16 p1, 0x4000

    .line 80
    .line 81
    :cond_4
    :goto_1
    aput p1, v3, v0

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->getAlsaCardDeviceString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAlsaCardDeviceString:Ljava/lang/String;

    .line 88
    .line 89
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/usb/UsbAlsaDevice;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/server/usb/UsbAlsaDevice;

    .line 8
    .line 9
    iget v0, p1, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    .line 10
    .line 11
    iget v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    .line 12
    .line 13
    if-ne v2, v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    .line 16
    .line 17
    iget-object v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    .line 18
    .line 19
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    .line 26
    .line 27
    iget-object v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    .line 28
    .line 29
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-boolean p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    .line 36
    .line 37
    iget-boolean p1, p1, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    .line 38
    .line 39
    if-ne p0, p1, :cond_1

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    :cond_1
    return v1
.end method

.method public final getAlsaCardDeviceString()Ljava/lang/String;
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    .line 2
    .line 3
    if-ltz p0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 6
    .line 7
    const-string v0, "card="

    .line 8
    .line 9
    const-string v1, ";device=0"

    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "Invalid alsa card or device alsaCard: "

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, " alsaDevice: 0"

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v0, "UsbAlsaDevice"

    .line 36
    .line 37
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/16 v0, 0x1f

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    .line 4
    .line 5
    add-int/2addr v1, v0

    .line 6
    mul-int/lit16 v1, v1, 0x3c1

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    aget-boolean v4, v2, v3

    .line 12
    .line 13
    xor-int/2addr v4, v3

    .line 14
    add-int/2addr v1, v4

    .line 15
    mul-int/2addr v1, v0

    .line 16
    const/4 v4, 0x0

    .line 17
    aget-boolean v2, v2, v4

    .line 18
    .line 19
    xor-int/2addr v2, v3

    .line 20
    add-int/2addr v1, v2

    .line 21
    mul-int/2addr v1, v0

    .line 22
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    .line 23
    .line 24
    aget-boolean v4, v2, v4

    .line 25
    .line 26
    xor-int/2addr v4, v3

    .line 27
    add-int/2addr v1, v4

    .line 28
    mul-int/2addr v1, v0

    .line 29
    aget-boolean v2, v2, v3

    .line 30
    .line 31
    xor-int/2addr v2, v3

    .line 32
    add-int/2addr v1, v2

    .line 33
    mul-int/2addr v1, v0

    .line 34
    iget-boolean p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    .line 35
    .line 36
    xor-int/2addr p0, v3

    .line 37
    add-int/2addr v1, p0

    .line 38
    return v1
.end method

.method public final startDevice(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    .line 2
    .line 3
    aget-boolean v1, v0, p1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    aput-boolean v1, v0, p1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mState:[I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aput v2, v0, p1

    .line 15
    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasJackDetect:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/android/server/usb/UsbAlsaJackDetector;->startJackDetect(Lcom/android/server/usb/UsbAlsaDevice;)Lcom/android/server/usb/UsbAlsaJackDetector;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    iput-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasJackDetect:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    :goto_0
    monitor-exit p0

    .line 43
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(IZ)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_2
    monitor-exit p0

    .line 48
    throw p1
.end method

.method public final declared-synchronized stopInput()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aget-boolean v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v2, 0x1

    .line 12
    :try_start_1
    aget-boolean v0, v0, v2

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :try_start_2
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->pleaseStop()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    .line 30
    :try_start_3
    monitor-exit p0

    .line 31
    goto :goto_2

    .line 32
    :goto_1
    monitor-exit p0

    .line 33
    throw v0

    .line 34
    :cond_2
    :goto_2
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    :try_start_4
    invoke-virtual {p0, v1, v1}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(IZ)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 36
    .line 37
    .line 38
    :try_start_5
    monitor-exit p0

    .line 39
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    .line 40
    .line 41
    aput-boolean v1, v0, v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :catchall_1
    move-exception v0

    .line 46
    goto :goto_3

    .line 47
    :catchall_2
    move-exception v0

    .line 48
    :try_start_6
    monitor-exit p0

    .line 49
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 50
    :goto_3
    monitor-exit p0

    .line 51
    throw v0
.end method

.method public final declared-synchronized stopOutput()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    aget-boolean v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    :try_start_1
    aget-boolean v0, v0, v2

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :try_start_2
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->pleaseStop()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    .line 30
    :try_start_3
    monitor-exit p0

    .line 31
    goto :goto_2

    .line 32
    :goto_1
    monitor-exit p0

    .line 33
    throw v0

    .line 34
    :cond_2
    :goto_2
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    :try_start_4
    invoke-virtual {p0, v1, v2}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(IZ)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 36
    .line 37
    .line 38
    :try_start_5
    monitor-exit p0

    .line 39
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    .line 40
    .line 41
    aput-boolean v2, v0, v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :catchall_1
    move-exception v0

    .line 46
    goto :goto_3

    .line 47
    :catchall_2
    move-exception v0

    .line 48
    :try_start_6
    monitor-exit p0

    .line 49
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 50
    :goto_3
    monitor-exit p0

    .line 51
    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ", device: 0, name: "

    .line 2
    .line 3
    const-string v1, "UsbAlsaDevice: [card: "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ", hasOutput: "

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    aget-boolean v0, v0, v1

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ", hasInput: "

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    aget-boolean v0, v0, v1

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, "]"

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    .line 60
    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    monitor-exit p0

    .line 63
    throw v0
.end method

.method public final updateWiredDeviceConnectionState(IZ)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    .line 2
    .line 3
    aget-boolean v0, v0, p1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p0, "UsbAlsaDevice"

    .line 9
    .line 10
    const-string p1, "Updating wired device connection state on unselected device"

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    .line 17
    .line 18
    aget v0, v0, p1

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const-string p0, "UsbAlsaDevice"

    .line 23
    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v0, "Unable to set device connection state as "

    .line 27
    .line 28
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    .line 32
    .line 33
    aget-object p1, v0, p1

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " device type is none"

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return v1

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAlsaCardDeviceString:Ljava/lang/String;

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    const-string p0, "UsbAlsaDevice"

    .line 56
    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v0, "Failed to update "

    .line 60
    .line 61
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    .line 65
    .line 66
    aget-object p1, v0, p1

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, " device connection state failed as alsa card device string is null"

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    return v1

    .line 84
    :cond_2
    const-string v0, "UsbAlsaDevice"

    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string/jumbo v3, "pre-call device:0x"

    .line 89
    .line 90
    .line 91
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    .line 95
    .line 96
    aget v3, v3, p1

    .line 97
    .line 98
    const-string v4, " addr:"

    .line 99
    .line 100
    invoke-static {v3, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAlsaCardDeviceString:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v3, " name:"

    .line 109
    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    const/4 v0, 0x1

    .line 126
    if-nez p1, :cond_4

    .line 127
    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    if-nez v2, :cond_3

    .line 132
    .line 133
    monitor-exit p0

    .line 134
    :goto_0
    move v2, v0

    .line 135
    goto :goto_1

    .line 136
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/usb/UsbAlsaJackDetector;->isInputJackConnected()Z

    .line 137
    .line 138
    .line 139
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    monitor-exit p0

    .line 141
    goto :goto_1

    .line 142
    :catchall_0
    move-exception p1

    .line 143
    monitor-exit p0

    .line 144
    throw p1

    .line 145
    :cond_4
    monitor-enter p0

    .line 146
    :try_start_2
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    .line 148
    if-nez v2, :cond_5

    .line 149
    .line 150
    monitor-exit p0

    .line 151
    goto :goto_0

    .line 152
    :cond_5
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/usb/UsbAlsaJackDetector;->isOutputJackConnected()Z

    .line 153
    .line 154
    .line 155
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    monitor-exit p0

    .line 157
    :goto_1
    const-string v3, "UsbAlsaDevice"

    .line 158
    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    sget-object v5, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    .line 165
    .line 166
    aget-object v5, v5, p1

    .line 167
    .line 168
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v5, " JACK connected: "

    .line 172
    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    if-eqz p2, :cond_6

    .line 187
    .line 188
    if-eqz v2, :cond_6

    .line 189
    .line 190
    move p2, v0

    .line 191
    goto :goto_2

    .line 192
    :cond_6
    move p2, v1

    .line 193
    :goto_2
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mState:[I

    .line 194
    .line 195
    aget v3, v2, p1

    .line 196
    .line 197
    if-eq p2, v3, :cond_7

    .line 198
    .line 199
    aput p2, v2, p1

    .line 200
    .line 201
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    .line 202
    .line 203
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    .line 204
    .line 205
    aget v3, v3, p1

    .line 206
    .line 207
    iget-object v4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAlsaCardDeviceString:Ljava/lang/String;

    .line 208
    .line 209
    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 210
    .line 211
    invoke-direct {v2, v3, v4, v5}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    :try_start_4
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    .line 215
    .line 216
    const-string v3, "UsbAlsaDevice"

    .line 217
    .line 218
    invoke-interface {p0, v2, p2, v3}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :catch_0
    const-string p0, "UsbAlsaDevice"

    .line 223
    .line 224
    new-instance p2, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string v0, "RemoteException in setWiredDeviceConnectionState for "

    .line 227
    .line 228
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    sget-object v0, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    .line 232
    .line 233
    aget-object p1, v0, p1

    .line 234
    .line 235
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    return v1

    .line 246
    :cond_7
    :goto_3
    return v0

    .line 247
    :catchall_1
    move-exception p1

    .line 248
    monitor-exit p0

    .line 249
    throw p1
.end method

.method public final declared-synchronized updateWiredDeviceConnectionStateByBundle(Z)V
    .locals 5

    .line 1
    const-string v0, "OUTPUT addr:"

    .line 2
    .line 3
    const-string v1, "INPUT addr:"

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string v2, "UsbAlsaDevice"

    .line 7
    .line 8
    const-string/jumbo v3, "updateWiredDeviceConnectionStateByBundle()"

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->getAlsaCardDeviceString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const-string p1, "UsbAlsaDevice"

    .line 21
    .line 22
    const-string/jumbo v0, "no alsaCardDeviceString"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    aget-boolean v3, v3, v4

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    const-string v3, "UsbAlsaDevice"

    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, " name:"

    .line 50
    .line 51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    new-instance v1, Landroid/media/AudioDeviceAttributes;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 69
    .line 70
    const/high16 v4, -0x7e000000

    .line 71
    .line 72
    invoke-direct {v1, v4, v2, v3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    .line 76
    .line 77
    const-string v4, "UsbAlsaDevice"

    .line 78
    .line 79
    invoke-interface {v3, v1, p1, v4}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    .line 83
    .line 84
    const/4 v3, 0x1

    .line 85
    aget-boolean v1, v1, v3

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    const-string v1, "UsbAlsaDevice"

    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, " name:"

    .line 100
    .line 101
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    .line 117
    .line 118
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 119
    .line 120
    const/high16 v3, 0x4000000

    .line 121
    .line 122
    invoke-direct {v0, v3, v2, v1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    .line 126
    .line 127
    const-string v2, "UsbAlsaDevice"

    .line 128
    .line 129
    invoke-interface {v1, v0, p1, v2}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :catch_0
    :try_start_2
    const-string p1, "UsbAlsaDevice"

    .line 134
    .line 135
    const-string v0, "RemoteException in updateWiredDeviceConnectionStateByBundle"

    .line 136
    .line 137
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    .line 139
    .line 140
    :cond_2
    :goto_0
    monitor-exit p0

    .line 141
    return-void

    .line 142
    :goto_1
    monitor-exit p0

    .line 143
    throw p1
.end method
