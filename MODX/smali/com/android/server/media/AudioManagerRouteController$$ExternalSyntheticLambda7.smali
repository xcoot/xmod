.class public final synthetic Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/media/AudioManagerRouteController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    .line 5
    iput-object p2, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    .line 8
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Landroid/media/AudioDeviceAttributes;

    .line 12
    iget-object v1, v0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 14
    iget-object v0, v0, Lcom/android/server/media/AudioManagerRouteController;->mStrategyForMedia:Landroid/media/audiopolicy/AudioProductStrategy;

    .line 16
    invoke-virtual {v1, v0, p0}, Landroid/media/AudioManager;->setPreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;Landroid/media/AudioDeviceAttributes;)Z

    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    .line 22
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 24
    check-cast p0, Ljava/lang/String;

    .line 26
    iget-object v1, v0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 28
    const-string v2, "activateBluetoothDeviceWithAddress: Ignoring unknown address "

    .line 30
    monitor-enter v1

    .line 31
    :try_start_0
    iget-object v3, v1, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothRoutes:Ljava/util/Map;

    .line 33
    check-cast v3, Ljava/util/HashMap;

    .line 35
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;

    .line 41
    if-nez v3, :cond_0

    .line 43
    const-string v3, "MR2SystemProvider"

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit v1

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    :try_start_1
    iget-object p0, v1, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 66
    iget-object v2, v3, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    monitor-exit v1

    .line 73
    :goto_0
    iget-object p0, v0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 75
    iget-object v0, v0, Lcom/android/server/media/AudioManagerRouteController;->mStrategyForMedia:Landroid/media/audiopolicy/AudioProductStrategy;

    .line 77
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->removePreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Z

    .line 80
    return-void

    .line 81
    :goto_1
    monitor-exit v1

    .line 82
    throw p0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
