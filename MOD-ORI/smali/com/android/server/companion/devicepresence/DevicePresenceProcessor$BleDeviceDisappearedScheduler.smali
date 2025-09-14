.class public final Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget p1, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v0, Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :pswitch_0
    const-string v0, " ) is likely BLE out of range, sending callback with event ( 1 )"

    .line 32
    .line 33
    const-string v1, "Device ( "

    .line 34
    .line 35
    iget p1, p1, Landroid/os/Message;->what:I

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 40
    .line 41
    monitor-enter v2

    .line 42
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 43
    .line 44
    iget-object v3, v3, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

    .line 45
    .line 46
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iget-object v4, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 51
    .line 52
    iget-object v4, v4, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v4, Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_1

    .line 65
    .line 66
    if-nez v3, :cond_1

    .line 67
    .line 68
    const-string v3, "CDM_DevicePresenceProcessor"

    .line 69
    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 89
    .line 90
    iget-object v1, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    .line 91
    .line 92
    const/4 v3, 0x1

    .line 93
    invoke-virtual {v0, v1, p1, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 100
    .line 101
    iget-object v0, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 102
    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v0, Ljava/util/HashSet;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 117
    .line 118
    .line 119
    monitor-exit v2

    .line 120
    return-void

    .line 121
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    throw p0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public unScheduleDeviceDisappeared(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "CDM_DevicePresenceProcessor"

    .line 8
    .line 9
    const-string/jumbo v1, "unScheduleDeviceDisappeared for Device( "

    .line 10
    .line 11
    .line 12
    const-string v2, " )"

    .line 13
    .line 14
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v1, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 40
    .line 41
    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0

    .line 50
    :cond_0
    :goto_0
    return-void
.end method
