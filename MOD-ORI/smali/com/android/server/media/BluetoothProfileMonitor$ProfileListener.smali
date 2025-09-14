.class public final Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/BluetoothProfileMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/media/BluetoothProfileMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p1, v1, :cond_2

    .line 6
    .line 7
    const/16 v1, 0x15

    .line 8
    .line 9
    if-eq p1, v1, :cond_1

    .line 10
    .line 11
    const/16 v1, 0x16

    .line 12
    .line 13
    if-eq p1, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    .line 17
    .line 18
    check-cast p2, Landroid/bluetooth/BluetoothLeAudio;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    .line 26
    .line 27
    check-cast p2, Landroid/bluetooth/BluetoothHearingAid;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    .line 33
    .line 34
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    .line 37
    .line 38
    :goto_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final onServiceDisconnected(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq p1, v1, :cond_2

    .line 7
    .line 8
    const/16 v1, 0x15

    .line 9
    .line 10
    if-eq p1, v1, :cond_1

    .line 11
    .line 12
    const/16 v1, 0x16

    .line 13
    .line 14
    if-eq p1, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    .line 18
    .line 19
    iput-object v2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    .line 25
    .line 26
    iput-object v2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    .line 30
    .line 31
    iput-object v2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method
