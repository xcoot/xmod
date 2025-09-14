.class public final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public mBikeMode:Z

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/WiredAccessoryManager$2;

.field public mHeadsetState:I

.field public final mInputManager:Lcom/android/server/input/InputManagerService;

.field public final mLock:Ljava/lang/Object;

.field public final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field public mSwitchValues:I

.field public final mUseDevInputEventForAudioJack:Z

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static -$$Nest$smupdateBit(Ljava/lang/String;Ljava/lang/String;I[I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p3, v0

    .line 3
    .line 4
    or-int/2addr v1, p2

    .line 5
    aput v1, p3, v0

    .line 6
    .line 7
    const-string v1, "=1"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    aget p0, p3, v0

    .line 21
    .line 22
    or-int/2addr p0, p2

    .line 23
    aput p0, p3, v0

    .line 24
    .line 25
    aget p0, p3, v2

    .line 26
    .line 27
    or-int/2addr p0, p2

    .line 28
    aput p0, p3, v2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v1, "=0"

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    aget p0, p3, v0

    .line 44
    .line 45
    or-int/2addr p0, p2

    .line 46
    aput p0, p3, v0

    .line 47
    .line 48
    aget p0, p3, v2

    .line 49
    .line 50
    not-int p1, p2

    .line 51
    and-int/2addr p0, p1

    .line 52
    aput p0, p3, v2

    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 4

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
    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/WiredAccessoryManager$2;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, p0, v1}, Lcom/android/server/WiredAccessoryManager$2;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Lcom/android/server/WiredAccessoryManager$2;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    .line 24
    .line 25
    const-string/jumbo v1, "power"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/os/PowerManager;

    .line 33
    .line 34
    const-string v2, "WiredAccessoryManager"

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 44
    .line 45
    .line 46
    const-string v1, "audio"

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/media/AudioManager;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 55
    .line 56
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const v1, 0x1110273

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    iput-boolean p2, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    .line 70
    .line 71
    new-instance p2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    .line 72
    .line 73
    invoke-direct {p2, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    .line 74
    .line 75
    .line 76
    new-instance p2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    .line 77
    .line 78
    invoke-direct {p2, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    .line 79
    .line 80
    .line 81
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    .line 82
    .line 83
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    .line 86
    .line 87
    if-eqz p2, :cond_0

    .line 88
    .line 89
    new-instance p2, Lcom/android/server/WiredAccessoryManager$1;

    .line 90
    .line 91
    new-instance v1, Landroid/os/Handler;

    .line 92
    .line 93
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-direct {p2, p0, v1}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Handler;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const-string/jumbo p1, "isBikeMode"

    .line 104
    .line 105
    .line 106
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 111
    .line 112
    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public final notifyWiredAccessoryChanged(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    .line 5
    .line 6
    not-int p2, p2

    .line 7
    and-int/2addr p2, v1

    .line 8
    or-int/2addr p1, p2

    .line 9
    iput p1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    .line 10
    .line 11
    and-int/lit8 p1, p1, 0x54

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    if-eq p1, v1, :cond_2

    .line 18
    .line 19
    const/16 v1, 0x10

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-eq p1, v1, :cond_1

    .line 23
    .line 24
    const/16 v1, 0x14

    .line 25
    .line 26
    if-eq p1, v1, :cond_1

    .line 27
    .line 28
    const/16 v1, 0x40

    .line 29
    .line 30
    if-eq p1, v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/16 p2, 0x20

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move p2, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 p2, 0x2

    .line 39
    :cond_3
    :goto_0
    const-string/jumbo p1, "h2w"

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 43
    .line 44
    and-int/lit8 v1, v1, -0x24

    .line 45
    .line 46
    or-int/2addr p2, v1

    .line 47
    invoke-virtual {p0, p2, p1}, Lcom/android/server/WiredAccessoryManager;->updateLocked(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final updateLocked(ILjava/lang/String;)V
    .locals 8

    .line 1
    and-int/lit8 v0, p1, 0x3f

    .line 2
    .line 3
    and-int/lit8 v1, p1, 0x4

    .line 4
    .line 5
    and-int/lit8 v2, p1, 0x8

    .line 6
    .line 7
    const/16 v3, 0x23

    .line 8
    .line 9
    and-int/2addr p1, v3

    .line 10
    iget v4, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 11
    .line 12
    const-string v5, "WiredAccessoryManager"

    .line 13
    .line 14
    if-ne v4, v0, :cond_0

    .line 15
    .line 16
    const-string p0, "No state change."

    .line 17
    .line 18
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v4, 0x0

    .line 23
    const/4 v6, 0x1

    .line 24
    if-ne p1, v3, :cond_1

    .line 25
    .line 26
    const-string v3, "Invalid combination, unsetting h2w flag"

    .line 27
    .line 28
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move v3, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v3, v6

    .line 34
    :goto_0
    const/4 v7, 0x4

    .line 35
    if-ne v1, v7, :cond_2

    .line 36
    .line 37
    const/16 v1, 0x8

    .line 38
    .line 39
    if-ne v2, v1, :cond_2

    .line 40
    .line 41
    const-string v1, "Invalid combination, unsetting usb flag"

    .line 42
    .line 43
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move v1, v4

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v1, v6

    .line 49
    :goto_1
    if-nez v3, :cond_3

    .line 50
    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    const-string/jumbo p0, "invalid transition, returning ..."

    .line 54
    .line 55
    .line 56
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_3
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 63
    .line 64
    .line 65
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Lcom/android/server/WiredAccessoryManager$2;

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    iget-boolean v1, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    if-eqz p1, :cond_6

    .line 76
    .line 77
    const-string p1, "Bike mode is ON. Earphones disabled"

    .line 78
    .line 79
    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    const/4 p1, 0x3

    .line 83
    const/4 p2, 0x0

    .line 84
    invoke-virtual {v2, p1, v4, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    .line 93
    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    if-nez p1, :cond_6

    .line 97
    .line 98
    :cond_5
    const-string p1, "MSG_NEW_DEVICE_STATE"

    .line 99
    .line 100
    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    iget p1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 104
    .line 105
    invoke-virtual {v2, v6, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    .line 111
    .line 112
    :cond_6
    :goto_2
    iput v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 113
    .line 114
    return-void
.end method
