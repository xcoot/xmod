.class public final Lcom/android/server/media/BluetoothProfileMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

.field public final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mContext:Landroid/content/Context;

.field public mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

.field public mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

.field public final mProfileListener:Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;-><init>(Lcom/android/server/media/BluetoothProfileMonitor;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mProfileListener:Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getGroupId(Landroid/bluetooth/BluetoothDevice;I)J
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x2

    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    if-eq p2, v0, :cond_4

    .line 6
    .line 7
    const/16 v0, 0x15

    .line 8
    .line 9
    if-eq p2, v0, :cond_2

    .line 10
    .line 11
    const/16 v0, 0x16

    .line 12
    .line 13
    if-ne p2, v0, :cond_1

    .line 14
    .line 15
    :try_start_0
    iget-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-long v1, p1

    .line 25
    :goto_0
    monitor-exit p0

    .line 26
    return-wide v1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p2, " is not supported as Bluetooth profile"

    .line 40
    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    iget-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    .line 53
    .line 54
    if-nez p2, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    :goto_1
    monitor-exit p0

    .line 62
    return-wide v1

    .line 63
    :cond_4
    monitor-exit p0

    .line 64
    return-wide v1

    .line 65
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p1
.end method

.method public final isProfileSupported(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x2

    .line 3
    if-eq p2, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x15

    .line 6
    .line 7
    if-eq p2, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x16

    .line 10
    .line 11
    if-ne p2, v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    iget-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p2, " is not supported as Bluetooth profile"

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    iget-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    .line 45
    .line 46
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    if-nez p2, :cond_3

    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return p0

    .line 51
    :cond_3
    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p1
.end method
