.class public final Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;
.super Landroid/media/IAudioRoutesObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 3
    invoke-direct {p0}, Landroid/media/IAudioRoutesObserver$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "dispatchAudioRoutesChanged setForcePath = "

    .line 4
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 6
    iget-object v1, v1, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    const-string v2, "BT"

    .line 11
    invoke-virtual {p1}, Landroid/media/AudioRoutesInfo;->getSetForcePath()Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 23
    iget-object v2, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 25
    if-eqz v2, :cond_0

    .line 27
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 29
    iput-boolean v3, v2, Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_3

    .line 34
    :cond_0
    const-string v2, "OTHERS"

    .line 36
    invoke-virtual {p1}, Landroid/media/AudioRoutesInfo;->getSetForcePath()Ljava/lang/String;

    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 46
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 48
    iput-boolean v4, v2, Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z

    .line 50
    :cond_1
    :goto_0
    const-string v2, "MediaRouterService"

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Landroid/media/AudioRoutesInfo;->getSetForcePath()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v0, " mForceBluetoothA2dpOn = "

    .line 66
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 71
    iget-boolean v0, v0, Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z

    .line 73
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget v0, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 85
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 87
    iget v5, v2, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    .line 89
    if-eq v0, v5, :cond_6

    .line 91
    and-int/lit8 v0, v0, 0x13

    .line 93
    if-nez v0, :cond_4

    .line 95
    iget-object v0, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 97
    if-nez v0, :cond_3

    .line 99
    iget-object v5, v2, Lcom/android/server/media/MediaRouterService;->mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 101
    if-eqz v5, :cond_2

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    move v3, v4

    .line 105
    :cond_3
    :goto_1
    iput-boolean v3, v2, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 107
    if-eqz v0, :cond_5

    .line 109
    if-eqz v3, :cond_5

    .line 111
    const-string v0, "MediaRouterService"

    .line 113
    const-string/jumbo v2, "force restoreBluetoothA2dp()"

    .line 116
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 121
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService;->restoreBluetoothA2dp()V

    .line 124
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 126
    iput-boolean v4, v0, Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z

    .line 128
    goto :goto_2

    .line 129
    :cond_4
    iput-boolean v4, v2, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 131
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 133
    iget p1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 135
    iput p1, p0, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    .line 137
    :cond_6
    monitor-exit v1

    .line 138
    return-void

    .line 139
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    throw p0
.end method
