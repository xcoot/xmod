.class public final Lcom/android/server/audio/AudioDeviceBroker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MESSAGES_MUTE_MUSIC:Ljava/util/Set;

.field public static final MESSAGES_SAR_RCV_CONTROL:Ljava/util/Set;

.field public static final VALID_COMMUNICATION_DEVICE_TYPES:[I

.field public static sLastDeviceConnectMsgTime:J

.field public static final sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;


# instance fields
.field public mAccessibilityStrategyId:I

.field public mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

.field public mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field public final mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mBluetoothA2dpSuspendedApplied:Z

.field public mBluetoothA2dpSuspendedExt:Z

.field public mBluetoothA2dpSuspendedInt:Z

.field public final mBluetoothAudioStateLock:Ljava/lang/Object;

.field public mBluetoothLeSuspendedApplied:Z

.field public mBluetoothLeSuspendedExt:Z

.field public mBluetoothLeSuspendedInt:Z

.field public mBluetoothScoOn:Z

.field public mBluetoothScoOnApplied:Z

.field public final mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

.field public final mBtHelper:Lcom/android/server/audio/BtHelper;

.field public final mCommDevDispatchers:Landroid/os/RemoteCallbackList;

.field public final mCommunicationDeviceLock:Ljava/lang/Object;

.field public mCommunicationDeviceUpdateCount:I

.field public final mCommunicationRouteClients:Ljava/util/LinkedList;

.field public mCommunicationStrategyId:I

.field public final mContext:Landroid/content/Context;

.field public mCurCommunicationPortId:I

.field public mCurRCVBackOffState:Z

.field public mCurrentCallDevice:Landroid/media/AudioDeviceAttributes;

.field public final mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

.field public final mDeviceStateLock:Ljava/lang/Object;

.field public mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

.field public mModeRequesterPackage:Ljava/lang/String;

.field public final mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

.field public mReceiverSupported:Ljava/lang/Boolean;

.field public mRequestScoCount:I

.field public mRequestScoUid:I

.field public mSarBackoffParam:Z

.field public mScoCb:Landroid/os/IBinder;

.field public final mScoManagedByAudio:Z

.field public final mSetModeLock:Ljava/lang/Object;

.field public final mSystemServer:Lcom/android/server/audio/SystemServerAdapter;


# direct methods
.method public static -$$Nest$mhandleCustomMessage(Lcom/android/server/audio/AudioDeviceBroker;Landroid/os/Message;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget v1, p1, Landroid/os/Message;->what:I

    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x0

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 12
    :pswitch_0
    const-string p0, "AS.AudioDeviceBroker"

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "Invalid message "

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget p1, p1, Landroid/os/Message;->what:I

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    goto/16 :goto_6

    .line 35
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 37
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 39
    iget v1, v1, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mPid:I

    .line 41
    if-eqz v1, :cond_0

    .line 43
    sget-object v0, Lcom/android/server/audio/AudioService;->sScoPreventionLogger:Lcom/android/server/utils/EventLogger;

    .line 45
    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 47
    const-string v2, "MSG_CHECK_ABNORMAL_SCO skipped to remove SCO client mode 0 uid = "

    .line 49
    const-string v4, " mAudioModeOwner  = "

    .line 51
    invoke-static {p1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-result-object p1

    .line 55
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 57
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    invoke-direct {v1, p0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 67
    const-string p0, "AS.AudioDeviceBroker"

    .line 69
    invoke-virtual {v1, v3, p0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 75
    goto/16 :goto_6

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 79
    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 82
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 85
    move-result-object v4

    .line 86
    move v5, v3

    .line 87
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_3

    .line 93
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 99
    iget-object v7, v6, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 101
    invoke-virtual {v7}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 104
    move-result v7

    .line 105
    const/4 v8, 0x7

    .line 106
    if-ne v7, v8, :cond_1

    .line 108
    add-int/lit8 v7, v5, 0x1

    .line 110
    iget v8, v6, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    .line 112
    if-ne p1, v8, :cond_2

    .line 114
    invoke-virtual {v6}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->unregisterDeathRecipient()V

    .line 117
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 120
    sget-object v7, Lcom/android/server/audio/AudioService;->sScoPreventionLogger:Lcom/android/server/utils/EventLogger;

    .line 122
    new-instance v8, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 124
    new-instance v9, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    const-string v10, "MSG_CHECK_ABNORMAL_SCO removed SCO client uid = "

    .line 131
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget v6, v6, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    .line 136
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object v6

    .line 143
    invoke-direct {v8, v6}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 146
    const-string v6, "AS.AudioDeviceBroker"

    .line 148
    invoke-virtual {v8, v3, v6}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 151
    invoke-virtual {v7, v8}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 154
    goto :goto_0

    .line 155
    :catchall_0
    move-exception p0

    .line 156
    goto :goto_3

    .line 157
    :cond_2
    move v5, v7

    .line 158
    goto :goto_0

    .line 159
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    if-nez v5, :cond_a

    .line 162
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 164
    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper;->isBluetoothScoOn()Z

    .line 167
    move-result p1

    .line 168
    if-eqz p1, :cond_a

    .line 170
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 172
    monitor-enter p1

    .line 173
    :try_start_1
    iget v1, p1, Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    if-ne v1, v2, :cond_4

    .line 177
    goto :goto_1

    .line 178
    :cond_4
    move v0, v3

    .line 179
    :goto_1
    monitor-exit p1

    .line 180
    if-eqz v0, :cond_a

    .line 182
    sget-object p1, Lcom/android/server/audio/AudioService;->sScoPreventionLogger:Lcom/android/server/utils/EventLogger;

    .line 184
    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 186
    const-string v1, "MSG_CHECK_ABNORMAL_SCO stopScoUsingVirtualVoiceCall()"

    .line 188
    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 191
    const-string v1, "AS.AudioDeviceBroker"

    .line 193
    invoke-virtual {v0, v3, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 196
    invoke-virtual {p1, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 199
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 201
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 203
    if-eqz p1, :cond_a

    .line 205
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 207
    if-eqz v0, :cond_a

    .line 209
    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 211
    if-eqz v1, :cond_6

    .line 213
    const/4 v2, 0x2

    .line 214
    if-eq v1, v2, :cond_5

    .line 216
    goto :goto_2

    .line 217
    :cond_5
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    .line 220
    goto :goto_2

    .line 221
    :cond_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall()Z

    .line 224
    :goto_2
    const/4 p1, 0x5

    .line 225
    iput p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 227
    goto/16 :goto_6

    .line 229
    :catchall_1
    move-exception p0

    .line 230
    monitor-exit p1

    .line 231
    throw p0

    .line 232
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    throw p0

    .line 234
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    .line 237
    move-result p1

    .line 238
    const-string v1, "AS.AudioDeviceBroker"

    .line 240
    if-nez p1, :cond_7

    .line 242
    iget-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSarBackoffParam:Z

    .line 244
    if-eqz p1, :cond_8

    .line 246
    :cond_7
    const-string/jumbo p1, "l_device_current_output"

    .line 249
    invoke-static {p1}, Lcom/samsung/android/media/SemAudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    move-result-object p1

    .line 253
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 256
    move-result p1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    .line 257
    goto :goto_4

    .line 258
    :catch_0
    const-string/jumbo p1, "getCurOutDevice : Can\'t get outDevice"

    .line 261
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 p1, -0x1

    .line 265
    :goto_4
    if-ne p1, v0, :cond_8

    .line 267
    goto :goto_5

    .line 268
    :cond_8
    move v0, v3

    .line 269
    :goto_5
    iget-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurRCVBackOffState:Z

    .line 271
    if-ne p1, v0, :cond_9

    .line 273
    goto :goto_6

    .line 274
    :cond_9
    new-instance p1, Landroid/content/Intent;

    .line 276
    const-string v2, "android.samsung.media.action.receiver_sar"

    .line 278
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    const-string v2, "android.samsung.media.extra.receiver"

    .line 283
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 286
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 288
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 290
    sget-object v4, Lcom/samsung/android/server/audio/utils/AudioUtils;->DEVICE_OUT_WIRED_DEVICE_SET:Ljava/util/Set;

    .line 292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 295
    move-result-wide v4

    .line 296
    const/4 v6, 0x0

    .line 297
    :try_start_4
    invoke-virtual {v2, p1, v3, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 300
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 303
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurRCVBackOffState:Z

    .line 305
    const-string p0, "Send receiver_sar state "

    .line 307
    invoke-static {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 310
    goto :goto_6

    .line 311
    :catchall_2
    move-exception p0

    .line 312
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 315
    throw p0

    .line 316
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 318
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 323
    goto :goto_6

    .line 324
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 326
    monitor-enter v0

    .line 327
    :try_start_5
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 329
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 331
    check-cast p1, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->onSetDeviceConnectionStateForceByUser(Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;)V

    .line 336
    monitor-exit v0

    .line 337
    goto :goto_6

    .line 338
    :catchall_3
    move-exception p0

    .line 339
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 340
    throw p0

    .line 341
    :pswitch_5
    new-instance p1, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 343
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 345
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 347
    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 349
    aget v2, v3, v2

    .line 351
    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 354
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 356
    :cond_a
    :goto_6
    return-void

    .line 357
    :pswitch_data_0
    .packed-switch 0xac7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static -$$Nest$monReceiveBtEvent(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/Intent;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 3
    const-string v0, "SCO volume set to index "

    .line 5
    const-string/jumbo v1, "onReceiveBtEvent ACTION_ACTIVE_DEVICE_CHANGED received with null profile proxy for device: "

    .line 8
    const-string/jumbo v2, "onReceiveBtEvent action: "

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    const-string v4, "AS.BtHelper"

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v2, " mScoAudioState: "

    .line 28
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 33
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v2, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v2

    .line 49
    const/4 v4, 0x1

    .line 50
    const/4 v5, 0x0

    .line 51
    if-eqz v2, :cond_1

    .line 53
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 55
    const-class v2, Landroid/bluetooth/BluetoothDevice;

    .line 57
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 63
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0, v4}, Lcom/android/server/audio/BtHelper;->isProfilePoxyConnected(I)Z

    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 73
    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    invoke-direct {v2, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 90
    const-string p1, "AS.BtHelper"

    .line 92
    invoke-virtual {v2, v5, p1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 95
    invoke-virtual {v0, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    .line 99
    goto :goto_1

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    goto :goto_2

    .line 102
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 108
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_2

    .line 114
    const-string v1, "android.bluetooth.profile.extra.STATE"

    .line 116
    const/4 v2, -0x1

    .line 117
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 120
    move-result v1

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/server/audio/BtHelper;->onScoAudioStateChanged(I)V

    .line 124
    const/16 v2, 0xc

    .line 126
    if-ne v1, v2, :cond_3

    .line 128
    const-string/jumbo v1, "com.samsung.bt.hfp.intent.extra.HEADSET_SCO_VOLUME"

    .line 131
    const/4 v2, 0x7

    .line 132
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 135
    move-result p1

    .line 136
    mul-int/lit8 p1, p1, 0xa

    .line 138
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 140
    const-string v2, "BtHelper.receiveBtEvent"

    .line 142
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 144
    const/4 v3, 0x6

    .line 145
    const/16 v4, 0x20

    .line 147
    invoke-virtual {v1, v3, p1, v4, v2}, Lcom/android/server/audio/AudioService;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 150
    const-string v1, "AS.BtHelper"

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    const-string p1, " by BT intent"

    .line 162
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object p1

    .line 169
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    goto :goto_0

    .line 173
    :cond_2
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_3

    .line 181
    const-string v0, "android.bluetooth.profile.extra.STATE"

    .line 183
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 186
    move-result v0

    .line 187
    const-string v1, "android.bluetooth.device.extra.DEVICE_TYPE"

    .line 189
    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 192
    move-result v1

    .line 193
    const/4 v2, 0x2

    .line 194
    if-ne v0, v2, :cond_3

    .line 196
    if-eq v1, v4, :cond_3

    .line 198
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 200
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 203
    move-result-object p1

    .line 204
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :cond_3
    :goto_0
    monitor-exit p0

    .line 210
    :goto_1
    return-void

    .line 211
    :goto_2
    monitor-exit p0

    .line 212
    throw p1
.end method

.method public static -$$Nest$monSendBecomingNoisyIntent(Lcom/android/server/audio/AudioDeviceBroker;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isMultiSoundOnInternal()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_6

    .line 11
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 13
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getPinDevice()I

    .line 16
    move-result v0

    .line 17
    if-eq v0, p1, :cond_6

    .line 19
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 21
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    const-string v0, "AS.MultiSoundManager"

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    const-string/jumbo v4, "sendBecomingNoisyIntentToUnpinApps, "

    .line 33
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v0, "0"

    .line 48
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 50
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    const v3, 0x8000

    .line 56
    invoke-static {v3, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    .line 59
    move-result v0

    .line 60
    if-lez v0, :cond_1

    .line 62
    if-eq p1, v3, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->isRemoteSubmixAppExist()Z

    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    .line 72
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    .line 77
    monitor-enter v3

    .line 78
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    .line 80
    check-cast v4, Ljava/util/HashSet;

    .line 82
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 85
    move-result-object v4

    .line 86
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_0

    .line 92
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Ljava/lang/Integer;

    .line 98
    iget-object v6, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 100
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 103
    move-result v5

    .line 104
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    sget v7, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 109
    iget-object v6, v6, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 111
    invoke-virtual {v6, v5}, Lcom/android/server/audio/AudioService;->getPackageName(I)[Ljava/lang/String;

    .line 114
    move-result-object v5

    .line 115
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 122
    goto :goto_0

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    goto :goto_1

    .line 125
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 129
    move-result v3

    .line 130
    new-array v3, v3, [Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 135
    move-result-object v0

    .line 136
    check-cast v0, [Ljava/lang/String;

    .line 138
    goto :goto_2

    .line 139
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    throw p0

    .line 141
    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinDevice(Z)I

    .line 144
    move-result v0

    .line 145
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    .line 147
    monitor-enter v3

    .line 148
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    .line 150
    iget-object v5, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 152
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 155
    move-result-object v5

    .line 156
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 159
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 162
    move-result-object v4

    .line 163
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_3

    .line 169
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    move-result-object v5

    .line 173
    check-cast v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 175
    iget v6, v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    .line 177
    if-ne v6, v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 181
    iget v4, v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    .line 183
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    sget v5, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 188
    iget-object v0, v0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 190
    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService;->getPackageName(I)[Ljava/lang/String;

    .line 193
    move-result-object v0

    .line 194
    monitor-exit v3

    .line 195
    goto :goto_2

    .line 196
    :catchall_1
    move-exception p0

    .line 197
    goto :goto_3

    .line 198
    :cond_3
    const-string v0, ""

    .line 200
    filled-new-array {v0}, [Ljava/lang/String;

    .line 203
    move-result-object v0

    .line 204
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 205
    :goto_2
    new-instance v3, Landroid/content/Intent;

    .line 207
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 210
    const-string v4, "android.media.AUDIO_BECOMING_NOISY_SEC"

    .line 212
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    move-result-object p1

    .line 221
    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 224
    move-result p1

    .line 225
    if-eqz p1, :cond_4

    .line 227
    const-string p1, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    .line 229
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    :cond_4
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->sendIntentToSpecificPackage(Landroid/content/Intent;[Ljava/lang/String;)V

    .line 235
    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    .line 237
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 243
    move-result-object p1

    .line 244
    if-eqz p1, :cond_5

    .line 246
    const/4 p1, 0x0

    .line 247
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    :cond_5
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->sendIntentToSpecificPackage(Landroid/content/Intent;[Ljava/lang/String;)V

    .line 253
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 255
    new-instance p1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 257
    const-string/jumbo v0, "broadcast ACTION_AUDIO_BECOMING_NOISY to unppin apps"

    .line 260
    invoke-direct {p1, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 263
    const-string v0, "AS.AudioDeviceBroker"

    .line 265
    invoke-virtual {p1, v2, v0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 271
    goto :goto_5

    .line 272
    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 273
    throw p0

    .line 274
    :cond_6
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 276
    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 278
    const-string/jumbo v4, "broadcast ACTION_AUDIO_BECOMING_NOISY"

    .line 281
    invoke-direct {v3, v4}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 284
    const-string v4, "AS.AudioDeviceBroker"

    .line 286
    invoke-virtual {v3, v2, v4}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 289
    invoke-virtual {v0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 292
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 294
    iget-object v2, v0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    .line 296
    const/high16 v3, 0x10000000

    .line 298
    const/high16 v4, 0x4000000

    .line 300
    if-nez v2, :cond_7

    .line 302
    goto :goto_4

    .line 303
    :cond_7
    new-instance v2, Landroid/content/Intent;

    .line 305
    const-string v5, "android.media.AUDIO_BECOMING_NOISY_SEC"

    .line 307
    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 313
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 316
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 319
    move-result-wide v5

    .line 320
    :try_start_4
    iget-object v0, v0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    .line 322
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 324
    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 327
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 330
    :goto_4
    new-instance v0, Landroid/content/Intent;

    .line 332
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    .line 334
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    sget-object v2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 339
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    move-result-object p1

    .line 343
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 346
    move-result p1

    .line 347
    if-eqz p1, :cond_8

    .line 349
    const-string p1, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    .line 351
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 354
    :cond_8
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 356
    iget-object p1, p0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    .line 358
    if-nez p1, :cond_9

    .line 360
    goto :goto_5

    .line 361
    :cond_9
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 364
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 367
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 370
    move-result-wide v1

    .line 371
    :try_start_5
    iget-object p0, p0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    .line 373
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 375
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 378
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 381
    :goto_5
    return-void

    .line 382
    :catchall_2
    move-exception p0

    .line 383
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 386
    throw p0

    .line 387
    :catchall_3
    move-exception p0

    .line 388
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 391
    throw p0
.end method

.method public static -$$Nest$monUpdateCommunicationRouteClient(Lcom/android/server/audio/AudioDeviceBroker;ZLjava/lang/String;)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 7
    move-result-object v3

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    const-string/jumbo v5, "onUpdateCommunicationRouteClient, crc: "

    .line 13
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    const-string v5, " wasBtScoRequested: "

    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    const-string v5, " eventSource: "

    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v4

    .line 39
    const-string v5, "AS.AudioDeviceBroker"

    .line 41
    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 46
    const/4 v6, 0x7

    .line 47
    if-eqz v3, :cond_7

    .line 49
    iget-object p1, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 51
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 54
    move-result p1

    .line 55
    if-ne p1, v6, :cond_5

    .line 57
    iget-object p1, v4, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 59
    if-nez p1, :cond_0

    .line 61
    goto/16 :goto_2

    .line 63
    :cond_0
    iget-object v6, v4, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 65
    sget-object v7, Lcom/samsung/android/server/audio/utils/BtUtils;->SAP_UUID:Landroid/os/ParcelUuid;

    .line 67
    if-nez v6, :cond_1

    .line 69
    move v6, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v6, p1}, Landroid/bluetooth/BluetoothHeadset;->getSamsungHandsfreeDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 74
    move-result-object v6

    .line 75
    const-string v7, "WA"

    .line 77
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v6

    .line 81
    :goto_0
    if-nez v6, :cond_4

    .line 83
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    .line 86
    move-result-object p1

    .line 87
    sget-object v6, Lcom/samsung/android/server/audio/utils/BtUtils;->SAP_UUID:Landroid/os/ParcelUuid;

    .line 89
    invoke-static {p1, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_2

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object p1, v4, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 98
    if-nez p1, :cond_3

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    const/16 v4, 0x206

    .line 103
    int-to-byte v4, v4

    .line 104
    int-to-byte v6, v1

    .line 105
    :try_start_0
    new-array v7, v1, [B

    .line 107
    aput-byte v4, v7, v2

    .line 109
    aput-byte v6, v7, v0

    .line 111
    invoke-virtual {p1, v7}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    .line 114
    move-result-object v4

    .line 115
    const/16 v7, 0x207

    .line 117
    int-to-byte v7, v7

    .line 118
    new-array v1, v1, [B

    .line 120
    aput-byte v7, v1, v2

    .line 122
    aput-byte v6, v1, v0

    .line 124
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    .line 127
    move-result-object p1

    .line 128
    if-eqz v4, :cond_5

    .line 130
    if-eqz p1, :cond_5

    .line 132
    const/4 v1, 0x3

    .line 133
    aget-byte v2, v4, v1

    .line 135
    if-eq v2, v0, :cond_5

    .line 137
    aget-byte p1, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    if-eq p1, v0, :cond_5

    .line 141
    goto :goto_1

    .line 142
    :catch_0
    move-exception p1

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    const-string/jumbo v1, "failed to get buds wearing status: "

    .line 148
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    const-string v0, "AS.BtUtils"

    .line 164
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    goto :goto_2

    .line 168
    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRoute(Ljava/lang/String;)V

    .line 171
    goto :goto_3

    .line 172
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mReceiverSupported:Ljava/lang/Boolean;

    .line 174
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 177
    move-result p1

    .line 178
    if-nez p1, :cond_6

    .line 180
    iget-object p1, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 182
    if-eqz p1, :cond_6

    .line 184
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallDevice:Landroid/media/AudioDeviceAttributes;

    .line 186
    if-eqz v0, :cond_6

    .line 188
    invoke-virtual {v0, p1}, Landroid/media/AudioDeviceAttributes;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_6

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    .line 196
    const-string/jumbo v0, "onUpdateCommunicationRouteClient return mCurrentCallDevice = "

    .line 199
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallDevice:Landroid/media/AudioDeviceAttributes;

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object p1

    .line 211
    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRoute(Ljava/lang/String;)V

    .line 217
    goto :goto_3

    .line 218
    :cond_6
    iget-object v7, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    .line 220
    iget v8, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    .line 222
    iget-object v9, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 224
    iget-boolean v11, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mIsPrivileged:Z

    .line 226
    const/4 v10, -0x1

    .line 227
    move-object v6, p0

    .line 228
    move-object v12, p2

    .line 229
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationRouteForClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;IZLjava/lang/String;)V

    .line 232
    goto :goto_3

    .line 233
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    .line 235
    if-nez v0, :cond_8

    .line 237
    invoke-virtual {p0, v6}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    .line 240
    move-result v0

    .line 241
    if-nez v0, :cond_8

    .line 243
    if-eqz p1, :cond_8

    .line 245
    invoke-virtual {v4, p2}, Lcom/android/server/audio/BtHelper;->stopBluetoothSco(Ljava/lang/String;)V

    .line 248
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRoute(Ljava/lang/String;)V

    .line 251
    :goto_3
    return-void
.end method

.method public static -$$Nest$msendMsg(Lcom/android/server/audio/AudioDeviceBroker;I)V
    .locals 7

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v4, 0x0

    .line 3
    const/16 v1, 0x23

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move v6, p1

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 12
    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetMESSAGES_MUTE_MUSIC()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    .line 3
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x4

    .line 10
    const/4 v2, 0x5

    .line 11
    const/16 v3, 0xd

    .line 13
    new-array v3, v3, [I

    .line 15
    fill-array-data v3, :array_0

    .line 18
    sput-object v3, Lcom/android/server/audio/AudioDeviceBroker;->VALID_COMMUNICATION_DEVICE_TYPES:[I

    .line 20
    new-instance v3, Ljava/util/HashSet;

    .line 22
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 25
    sput-object v3, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    .line 27
    new-instance v3, Ljava/util/HashSet;

    .line 29
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 32
    sput-object v3, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_SAR_RCV_CONTROL:Ljava/util/Set;

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    const/16 v0, 0x2a

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    return-void

    .line 65
    :array_0
    .array-data 4
        0x2
        0x7
        0x3
        0x16
        0x1
        0x4
        0x17
        0x1a
        0xb
        0x1b
        0x5
        0x9
        0x13
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioSystemAdapter;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 7
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    .line 9
    new-instance v1, Ljava/lang/Object;

    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 16
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    new-instance v1, Ljava/lang/Object;

    .line 26
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 31
    new-instance v1, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 33
    invoke-direct {v1, v2, v2, v2}, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;-><init>(III)V

    .line 36
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 38
    new-instance v1, Ljava/lang/Object;

    .line 40
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    .line 45
    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    .line 47
    new-instance v1, Ljava/lang/Object;

    .line 49
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    .line 54
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 56
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 61
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 68
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    new-instance v0, Ljava/util/LinkedList;

    .line 72
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 77
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallDevice:Landroid/media/AudioDeviceAttributes;

    .line 80
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 82
    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mReceiverSupported:Ljava/lang/Boolean;

    .line 84
    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoUid:I

    .line 86
    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    .line 88
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoCb:Landroid/os/IBinder;

    .line 90
    iput-boolean v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurRCVBackOffState:Z

    .line 92
    iput-boolean v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSarBackoffParam:Z

    .line 94
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 96
    const-string v3, ""

    .line 98
    iput-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeRequesterPackage:Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 104
    new-instance p2, Lcom/android/server/audio/BtHelper;

    .line 106
    invoke-direct {p2, p0, p1}, Lcom/android/server/audio/BtHelper;-><init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/Context;)V

    .line 109
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 111
    new-instance p2, Lcom/android/server/audio/AudioDeviceInventory;

    .line 113
    invoke-direct {p2, p0}, Lcom/android/server/audio/AudioDeviceInventory;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    .line 116
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 118
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance p2, Lcom/android/server/audio/SystemServerAdapter;

    .line 123
    invoke-direct {p2, p1}, Lcom/android/server/audio/SystemServerAdapter;-><init>(Landroid/content/Context;)V

    .line 126
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 128
    iput-object p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 130
    invoke-static {}, Landroid/media/audio/Flags;->scoManagedByAudio()Z

    .line 133
    move-result p2

    .line 134
    const/4 p3, 0x1

    .line 135
    if-eqz p2, :cond_0

    .line 137
    invoke-static {}, Landroid/sysprop/BluetoothProperties;->isScoManagedByAudioEnabled()Ljava/util/Optional;

    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-result-object p2

    .line 145
    check-cast p2, Ljava/lang/Boolean;

    .line 147
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    move-result p2

    .line 151
    if-eqz p2, :cond_0

    .line 153
    move p2, p3

    .line 154
    goto :goto_0

    .line 155
    :cond_0
    move p2, v2

    .line 156
    :goto_0
    iput-boolean p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    .line 158
    const-string/jumbo p2, "power"

    .line 161
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Landroid/os/PowerManager;

    .line 167
    const-string/jumbo p2, "handleAudioDeviceEvent"

    .line 170
    invoke-virtual {p1, p3, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 173
    move-result-object p1

    .line 174
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 176
    new-instance p1, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    .line 178
    invoke-direct {p1, p0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    .line 181
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 184
    monitor-enter p0

    .line 185
    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    if-nez p1, :cond_1

    .line 189
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    goto :goto_1

    .line 193
    :catchall_0
    move-exception p1

    .line 194
    goto :goto_2

    .line 195
    :catch_0
    :try_start_2
    const-string p1, "AS.AudioDeviceBroker"

    .line 197
    const-string p2, "Interruption while waiting on BrokerHandler"

    .line 199
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    goto :goto_1

    .line 203
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    .line 206
    monitor-enter p1

    .line 207
    :try_start_3
    iput-boolean v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    .line 209
    iput-boolean v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    .line 211
    iput-boolean v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    .line 213
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->reapplyAudioHalBluetoothState()V

    .line 216
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 217
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->initRoutingStrategyIds()V

    .line 220
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    .line 222
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    .line 225
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 227
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    new-instance v3, Landroid/content/IntentFilter;

    .line 234
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    const-string p2, "android.intent.action.USER_STARTED"

    .line 239
    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    new-instance v1, Lcom/android/server/audio/SystemServerAdapter$1;

    .line 244
    invoke-direct {v1, p1}, Lcom/android/server/audio/SystemServerAdapter$1;-><init>(Lcom/android/server/audio/SystemServerAdapter;)V

    .line 247
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 249
    const/4 v4, 0x0

    .line 250
    const/4 v5, 0x0

    .line 251
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 254
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 256
    const/16 p1, 0xac7

    .line 258
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    return-void

    .line 262
    :catchall_1
    move-exception p0

    .line 263
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 264
    throw p0

    .line 265
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 266
    throw p1
.end method

.method public static btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Landroid/media/MediaMetrics$Item;

    .line 11
    const-string v1, "audio.device.queueOnBluetoothActiveDeviceChanged"

    .line 13
    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 16
    sget-object v1, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 21
    move-result-object p1

    .line 22
    sget-object v0, Landroid/media/MediaMetrics$Property;->STATUS:Landroid/media/MediaMetrics$Key;

    .line 24
    iget-object p2, p2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 26
    invoke-virtual {p2}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    .line 29
    move-result p2

    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, v0, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 37
    move-result-object p1

    .line 38
    sget-object p2, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 40
    invoke-virtual {p1, p2, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 47
    return-void
.end method

.method public static createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 3
    invoke-virtual {v0}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_6

    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_5

    .line 13
    const/16 v1, 0xb

    .line 15
    if-eq v0, v1, :cond_4

    .line 17
    const/16 v1, 0x1a

    .line 19
    if-eq v0, v1, :cond_3

    .line 21
    const/16 v1, 0x15

    .line 23
    if-eq v0, v1, :cond_2

    .line 25
    const/16 v1, 0x16

    .line 27
    if-ne v0, v1, :cond_1

    .line 29
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 31
    invoke-virtual {v0}, Landroid/media/BluetoothProfileConnectionInfo;->isLeOutput()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 37
    const/high16 v0, 0x20000000

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/high16 v0, -0x60000000

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    const-string v0, "Invalid profile "

    .line 49
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 54
    invoke-virtual {p0}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    .line 57
    move-result p0

    .line 58
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p1

    .line 69
    :cond_2
    const/high16 v0, 0x8000000

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const v0, 0x20000002

    .line 75
    goto :goto_0

    .line 76
    :cond_4
    const/high16 v0, -0x7ffe0000

    .line 78
    goto :goto_0

    .line 79
    :cond_5
    const/16 v0, 0x80

    .line 81
    goto :goto_0

    .line 82
    :cond_6
    const/16 v0, 0x10

    .line 84
    :goto_0
    new-instance v1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 86
    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;-><init>(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;II)V

    .line 89
    return-object v1
.end method

.method public static getAvailableCommunicationDevices()Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {v1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    .line 10
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_1

    .line 15
    aget-object v4, v1, v3

    .line 17
    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->isValidCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_0

    .line 23
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-object v0
.end method

.method public static getCommunicationDeviceOfType(I)Landroid/media/AudioDeviceInfo;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/audio/AudioDeviceBroker;->getAvailableCommunicationDevices()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda1;

    .line 11
    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 14
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 21
    move-result-object p0

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/media/AudioDeviceInfo;

    .line 29
    return-object p0
.end method

.method public static isMessageHandledUnderWakelock(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_0

    .line 4
    const/16 v0, 0x1d

    .line 6
    if-eq p0, v0, :cond_0

    .line 8
    const/16 v0, 0x1f

    .line 10
    if-eq p0, v0, :cond_0

    .line 12
    const/16 v0, 0x23

    .line 14
    if-eq p0, v0, :cond_0

    .line 16
    const/16 v0, 0x31

    .line 18
    if-eq p0, v0, :cond_0

    .line 20
    const/4 v0, 0x6

    .line 21
    if-eq p0, v0, :cond_0

    .line 23
    const/4 v0, 0x7

    .line 24
    if-eq p0, v0, :cond_0

    .line 26
    const/16 v0, 0xa

    .line 28
    if-eq p0, v0, :cond_0

    .line 30
    const/16 v0, 0xb

    .line 32
    if-eq p0, v0, :cond_0

    .line 34
    const/4 p0, 0x0

    .line 35
    return p0

    .line 36
    :cond_0
    const/4 p0, 0x1

    .line 37
    return p0
.end method

.method public static isValidCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "device must not be null"

    .line 4
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->isSink()Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 17
    move-result p0

    .line 18
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->VALID_COMMUNICATION_DEVICE_TYPES:[I

    .line 20
    move v2, v1

    .line 21
    :goto_0
    const/16 v3, 0xd

    .line 23
    if-ge v2, v3, :cond_1

    .line 25
    aget v3, v0, v2

    .line 27
    if-ne p0, v3, :cond_0

    .line 29
    const/4 v1, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public final addCommunicationRouteClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 4
    new-instance v6, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 6
    move-object v0, v6

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move v3, p2

    .line 10
    move-object v4, p3

    .line 11
    move v5, p4

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;-><init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;Z)V

    .line 15
    const/4 p3, 0x0

    .line 16
    :try_start_0
    invoke-interface {p1, v6, p3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 21
    invoke-virtual {p1, p3, v6}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 24
    invoke-virtual {v6}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 32
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    .line 35
    move-result p3

    .line 36
    xor-int/lit8 p3, p3, 0x1

    .line 38
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 40
    invoke-virtual {p1, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->isRecordingActiveForUid(I)Z

    .line 43
    move-result p1

    .line 44
    xor-int/lit8 p1, p1, 0x1

    .line 46
    invoke-virtual {p0, v6, p3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setForceCommunicationClientStateAndDelayedCheck(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;ZZ)V

    .line 49
    :cond_0
    return-object v6

    .line 50
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 52
    const-string p1, "CommunicationRouteClient could not link to "

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object p1, v6, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    const-string p1, " binder death"

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    const-string p1, "AS.AudioDeviceBroker"

    .line 73
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 p0, 0x0

    .line 77
    return-object p0
.end method

.method public final checkAndResetBtSco()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    .line 3
    const/4 v1, 0x4

    .line 4
    if-le v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoCb:Landroid/os/IBinder;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    sget-object v2, Lcom/android/server/audio/AudioService;->sScoPreventionLogger:Lcom/android/server/utils/EventLogger;

    .line 19
    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo v5, "checkAndResetBtSco remove SCO client of uid = "

    .line 26
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    iget v0, v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    .line 31
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-direct {v3, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 41
    const-string v0, "AS.AudioDeviceBroker"

    .line 43
    invoke-virtual {v3, v1, v0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 46
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 49
    :cond_0
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoUid:I

    .line 51
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    .line 53
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoCb:Landroid/os/IBinder;

    .line 56
    :cond_1
    return-void
.end method

.method public final checkDeviceConnected(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceConnected(I)Z

    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final checkMessagesMuteMusic(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->messageMutesMusic(I)Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_1

    .line 7
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    .line 9
    check-cast v0, Ljava/util/HashSet;

    .line 11
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/Integer;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 33
    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->messageMutesMusic(I)Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 45
    const/4 p1, 0x1

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 51
    move-result v0

    .line 52
    if-eq p1, v0, :cond_2

    .line 54
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->setMusicMute(Z)V

    .line 59
    :cond_2
    return-void
.end method

.method public final checkSendBecomingNoisyIntent(II)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 3
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    const v1, 0x8000

    .line 9
    :try_start_0
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final clearA2dpSuspended(Z)V
    .locals 3

    .line 1
    const-string v0, "AS.AudioDeviceBroker"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "clearA2dpSuspended, internalOnly: "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    .line 23
    monitor-enter v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    .line 27
    if-nez p1, :cond_0

    .line 29
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final clearLeAudioSuspended(Z)V
    .locals 3

    .line 1
    const-string v0, "AS.AudioDeviceBroker"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "clearLeAudioSuspended, internalOnly: "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    .line 23
    monitor-enter v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    .line 27
    if-nez p1, :cond_0

    .line 29
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final connectA2dpDevice(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    move/from16 v3, p3

    .line 9
    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const/4 v4, -0x1

    .line 15
    if-eq v3, v4, :cond_0

    .line 17
    mul-int/lit8 v3, v3, 0xa

    .line 19
    :cond_0
    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 21
    const/4 v6, 0x3

    .line 22
    const/16 v7, 0x80

    .line 24
    invoke-virtual {v5, v6, v7}, Lcom/android/server/audio/AudioService;->getVssVolumeForDevice(II)I

    .line 27
    move-result v5

    .line 28
    iget-object v6, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 30
    monitor-enter v6

    .line 31
    :try_start_0
    iget-object v7, v6, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    if-nez v7, :cond_1

    .line 35
    monitor-exit v6

    .line 36
    const/4 v6, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    .line 41
    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    monitor-exit v6

    .line 43
    move-object v6, v7

    .line 44
    :goto_0
    iget-object v7, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 46
    iget-object v8, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 48
    invoke-virtual {v8}, Lcom/android/server/audio/AudioService;->isSafeMediaVolumeStateActive()Z

    .line 51
    move-result v8

    .line 52
    const-string v9, "Set the stored AvrcpAbsoluteVolumeSupported addr="

    .line 54
    const-string v10, "Set safe media volume  : "

    .line 56
    const-string v11, "Restore vol:"

    .line 58
    const-string/jumbo v12, "connect :"

    .line 61
    iget-object v13, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 63
    monitor-enter v13

    .line 64
    :try_start_2
    iget-object v14, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 66
    new-instance v15, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 76
    move-result-object v12

    .line 77
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v12, ",active:"

    .line 82
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {v6}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 88
    move-result-object v12

    .line 89
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v12, ",state:"

    .line 94
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v4

    .line 104
    invoke-direct {v15, v4}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v14, v15}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 113
    move-result-object v4

    .line 114
    const/4 v12, 0x2

    .line 115
    if-ne v2, v12, :cond_8

    .line 117
    const/4 v14, -0x1

    .line 118
    if-ne v3, v14, :cond_4

    .line 120
    iget-object v3, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 122
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_2

    .line 128
    iget-object v3, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 130
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object v15

    .line 134
    invoke-virtual {v3, v1, v15}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Ljava/lang/Integer;

    .line 140
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 143
    move-result v3

    .line 144
    goto :goto_1

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    goto/16 :goto_7

    .line 148
    :cond_2
    iget-object v3, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 150
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    new-instance v14, Ljava/lang/StringBuilder;

    .line 155
    const-string v15, "_addr=\'"

    .line 157
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v15, "\'"

    .line 165
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v14

    .line 172
    const-string v15, "_addr"

    .line 174
    const-string v12, "_index"

    .line 176
    filled-new-array {v15, v12}, [Ljava/lang/String;

    .line 179
    move-result-object v12

    .line 180
    const-string/jumbo v15, "device_addr"

    .line 183
    const/4 v0, -0x1

    .line 184
    invoke-virtual {v3, v15, v12, v14, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    .line 187
    move-result v3

    .line 188
    :goto_1
    iget-object v0, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 190
    new-instance v12, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 192
    new-instance v14, Ljava/lang/StringBuilder;

    .line 194
    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    const-string v11, ",default:"

    .line 202
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object v11

    .line 212
    invoke-direct {v12, v11}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, v12}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 218
    const/4 v0, -0x1

    .line 219
    if-eq v3, v0, :cond_3

    .line 221
    goto :goto_2

    .line 222
    :cond_3
    move v3, v5

    .line 223
    :cond_4
    :goto_2
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_MEDIA_VOLUME:Z

    .line 225
    if-eqz v0, :cond_7

    .line 227
    if-eqz v8, :cond_7

    .line 229
    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    .line 231
    if-nez v5, :cond_6

    .line 233
    if-eqz v0, :cond_5

    .line 235
    goto :goto_3

    .line 236
    :cond_5
    const/16 v0, 0x96

    .line 238
    goto :goto_4

    .line 239
    :cond_6
    :goto_3
    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    .line 242
    move-result v0

    .line 243
    add-int/lit8 v0, v0, -0x1

    .line 245
    mul-int/lit8 v0, v0, 0xa

    .line 247
    :goto_4
    if-le v3, v0, :cond_7

    .line 249
    const-string v3, "AS.DualA2dpManager"

    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    .line 253
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    move-result-object v5

    .line 263
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    move v3, v0

    .line 267
    :cond_7
    invoke-virtual {v7, v3}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getValidIndex(I)I

    .line 270
    move-result v3

    .line 271
    iget-object v0, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 273
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    move-result-object v5

    .line 277
    invoke-virtual {v0, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-virtual {v7, v3, v4}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->postSaveVolumeDB(ILjava/lang/String;)V

    .line 283
    iget-object v0, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    .line 285
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 288
    move-result v0

    .line 289
    if-nez v0, :cond_9

    .line 291
    iget-object v0, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mStoredAbsVolSupported:Landroid/util/ArrayMap;

    .line 293
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 296
    move-result v0

    .line 297
    if-eqz v0, :cond_9

    .line 299
    iget-object v0, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mStoredAbsVolSupported:Landroid/util/ArrayMap;

    .line 301
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 303
    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    move-result-object v0

    .line 307
    check-cast v0, Ljava/lang/Boolean;

    .line 309
    const-string v1, "AS.DualA2dpManager"

    .line 311
    new-instance v5, Ljava/lang/StringBuilder;

    .line 313
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v8, " supported="

    .line 321
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    move-result-object v5

    .line 331
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 337
    move-result v0

    .line 338
    invoke-virtual {v7, v4, v0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setAvrcpAbsoluteVolumeSupported(Ljava/lang/String;Z)V

    .line 341
    goto :goto_5

    .line 342
    :cond_8
    if-nez v2, :cond_9

    .line 344
    iget-object v0, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 346
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    .line 351
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :cond_9
    :goto_5
    invoke-virtual {v7, v3}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->updateMainVolume(I)V

    .line 357
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    if-eqz v6, :cond_a

    .line 360
    const/4 v0, 0x2

    .line 361
    if-ne v2, v0, :cond_a

    .line 363
    move-object/from16 v0, p0

    .line 365
    invoke-virtual {v0, v6}, Lcom/android/server/audio/AudioDeviceBroker;->setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 368
    goto :goto_6

    .line 369
    :cond_a
    move-object/from16 v0, p0

    .line 371
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAvrcpAbsoluteVolumeSupported()Z

    .line 374
    return-void

    .line 375
    :goto_7
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 376
    throw v0

    .line 377
    :catchall_1
    move-exception v0

    .line 378
    monitor-exit v6

    .line 379
    throw v0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "  Message handler (watch for unhandled messages):"

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 12
    new-instance v1, Landroid/util/PrintWriterPrinter;

    .line 14
    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 17
    const-string v2, "    "

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "Message handler is null"

    .line 25
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    const-string v1, "\n  BECOMING_NOISY_INTENT_DEVICES_SET="

    .line 35
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    .line 40
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda32;

    .line 42
    const/4 v3, 0x2

    .line 43
    invoke-direct {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda32;-><init>(ILjava/lang/Object;)V

    .line 46
    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 49
    const-string v1, "\n  Preferred devices for strategy:"

    .line 51
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    .line 56
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;

    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-direct {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;-><init>(ILjava/io/PrintWriter;)V

    .line 62
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 65
    const-string v1, "\n  Non-default devices for strategy:"

    .line 67
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    .line 72
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;

    .line 74
    const/4 v3, 0x1

    .line 75
    invoke-direct {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;-><init>(ILjava/io/PrintWriter;)V

    .line 78
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 81
    const-string v1, "\n  Connected devices:"

    .line 83
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 88
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;

    .line 90
    const/4 v3, 0x2

    .line 91
    invoke-direct {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;-><init>(ILjava/io/PrintWriter;)V

    .line 94
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 97
    const-string v1, "\n  APM Connected device (A2DP sink only):"

    .line 99
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    const-string v2, "\n  mBluetoothDualModeEnabled = "

    .line 106
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    iget-boolean v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mBluetoothDualModeEnabled:Z

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    const-string v1, "\n  Preferred devices for capture preset:"

    .line 123
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    .line 128
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;

    .line 130
    const/4 v3, 0x3

    .line 131
    invoke-direct {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;-><init>(ILjava/io/PrintWriter;)V

    .line 134
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 137
    const-string v1, "\n  Applied devices roles for strategies (from API):"

    .line 139
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    .line 144
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;

    .line 146
    const/4 v3, 0x4

    .line 147
    invoke-direct {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;-><init>(ILjava/io/PrintWriter;)V

    .line 150
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 153
    const-string v1, "\n  Applied devices roles for strategies (internal):"

    .line 155
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    .line 160
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;

    .line 162
    const/4 v3, 0x5

    .line 163
    invoke-direct {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;-><init>(ILjava/io/PrintWriter;)V

    .line 166
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 169
    const-string v1, "\n  Applied devices roles for presets (from API):"

    .line 171
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRoles:Landroid/util/ArrayMap;

    .line 176
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;

    .line 178
    const/4 v3, 0x6

    .line 179
    invoke-direct {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;-><init>(ILjava/io/PrintWriter;)V

    .line 182
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 185
    const-string v1, "\n  Applied devices roles for presets (internal:"

    .line 187
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRolesInt:Landroid/util/ArrayMap;

    .line 192
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;

    .line 194
    const/4 v3, 0x7

    .line 195
    invoke-direct {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;-><init>(ILjava/io/PrintWriter;)V

    .line 198
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 201
    const-string v1, "\ndevices:\n"

    .line 203
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    .line 208
    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 211
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 214
    move-result-object v0

    .line 215
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 218
    move-result-object v0

    .line 219
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    move-result v2

    .line 223
    if-eqz v2, :cond_1

    .line 225
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    move-result-object v2

    .line 229
    check-cast v2, Lcom/android/server/audio/AdiDeviceState;

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    .line 233
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    const-string v4, "\t"

    .line 238
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    const-string v2, "\n"

    .line 246
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    goto :goto_1

    .line 257
    :catchall_0
    move-exception p0

    .line 258
    goto/16 :goto_5

    .line 260
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    const-string v0, "\n  Communication route clients:"

    .line 263
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 268
    new-instance v1, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda0;

    .line 270
    invoke-direct {v1, p1}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    .line 273
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->forEach(Ljava/util/function/Consumer;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    .line 278
    const-string v1, "\n  Computed Preferred communication device: "

    .line 280
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    .line 299
    const-string v1, "\n  Applied Preferred communication device: "

    .line 301
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    .line 318
    const-string v1, "  Active communication device: "

    .line 320
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    .line 325
    if-nez v1, :cond_2

    .line 327
    const-string v1, "None"

    .line 329
    goto :goto_2

    .line 330
    :cond_2
    new-instance v1, Landroid/media/AudioDeviceAttributes;

    .line 332
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    .line 334
    invoke-direct {v1, v2}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 337
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    .line 349
    const-string v1, "  mCommunicationStrategyId: "

    .line 351
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 356
    const-string v2, "  mAccessibilityStrategyId: "

    .line 358
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    move-result-object v0

    .line 362
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    .line 364
    const-string v2, "\n  mAudioModeOwner: "

    .line 366
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    move-result-object v0

    .line 379
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    .line 384
    const-string v1, "\n  mScoManagedByAudio: "

    .line 386
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    .line 391
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 394
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 396
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    .line 401
    const-string v1, "\n  mBluetoothHeadset: "

    .line 403
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    move-result-object v0

    .line 415
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    .line 420
    const-string v1, "  mBluetoothHeadsetDevice: "

    .line 422
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    move-result-object v0

    .line 434
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 439
    if-eqz v0, :cond_3

    .line 441
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    .line 444
    move-result-object v0

    .line 445
    if-eqz v0, :cond_3

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    .line 449
    const-string v2, "  mBluetoothHeadsetDevice.DeviceClass: "

    .line 451
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    .line 457
    move-result v0

    .line 458
    sparse-switch v0, :sswitch_data_0

    .line 461
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 464
    move-result-object v0

    .line 465
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 468
    move-result-object v0

    .line 469
    const-string v2, "0x%04x"

    .line 471
    invoke-static {v2, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 474
    move-result-object v0

    .line 475
    goto :goto_3

    .line 476
    :sswitch_0
    const-string v0, "AUDIO_VIDEO_VIDEO_GAMING_TOY"

    .line 478
    goto :goto_3

    .line 479
    :sswitch_1
    const-string v0, "AUDIO_VIDEO_RESERVED_0x0444"

    .line 481
    goto :goto_3

    .line 482
    :sswitch_2
    const-string v0, "AUDIO_VIDEO_VIDEO_CONFERENCING"

    .line 484
    goto :goto_3

    .line 485
    :sswitch_3
    const-string v0, "AUDIO_VIDEO_VIDEO_DISPLAY_AND_LOUDSPEAKER"

    .line 487
    goto :goto_3

    .line 488
    :sswitch_4
    const-string v0, "AUDIO_VIDEO_VIDEO_MONITOR"

    .line 490
    goto :goto_3

    .line 491
    :sswitch_5
    const-string v0, "AUDIO_VIDEO_CAMCORDER"

    .line 493
    goto :goto_3

    .line 494
    :sswitch_6
    const-string v0, "AUDIO_VIDEO_VIDEO_CAMERA"

    .line 496
    goto :goto_3

    .line 497
    :sswitch_7
    const-string v0, "AUDIO_VIDEO_VCR"

    .line 499
    goto :goto_3

    .line 500
    :sswitch_8
    const-string v0, "AUDIO_VIDEO_HIFI_AUDIO"

    .line 502
    goto :goto_3

    .line 503
    :sswitch_9
    const-string v0, "AUDIO_VIDEO_SET_TOP_BOX"

    .line 505
    goto :goto_3

    .line 506
    :sswitch_a
    const-string v0, "AUDIO_VIDEO_CAR_AUDIO"

    .line 508
    goto :goto_3

    .line 509
    :sswitch_b
    const-string v0, "AUDIO_VIDEO_PORTABLE_AUDIO"

    .line 511
    goto :goto_3

    .line 512
    :sswitch_c
    const-string v0, "AUDIO_VIDEO_HEADPHONES"

    .line 514
    goto :goto_3

    .line 515
    :sswitch_d
    const-string v0, "AUDIO_VIDEO_LOUDSPEAKER"

    .line 517
    goto :goto_3

    .line 518
    :sswitch_e
    const-string v0, "AUDIO_VIDEO_MICROPHONE"

    .line 520
    goto :goto_3

    .line 521
    :sswitch_f
    const-string v0, "AUDIO_VIDEO_RESERVED_0x040C"

    .line 523
    goto :goto_3

    .line 524
    :sswitch_10
    const-string v0, "AUDIO_VIDEO_HANDSFREE"

    .line 526
    goto :goto_3

    .line 527
    :sswitch_11
    const-string v0, "AUDIO_VIDEO_WEARABLE_HEADSET"

    .line 529
    goto :goto_3

    .line 530
    :sswitch_12
    const-string v0, "AUDIO_VIDEO_UNCATEGORIZED"

    .line 532
    :goto_3
    invoke-static {v1, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 535
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 537
    const-string v1, "  mScoAudioState: "

    .line 539
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 542
    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 544
    if-eqz v1, :cond_8

    .line 546
    const/4 v2, 0x1

    .line 547
    if-eq v1, v2, :cond_7

    .line 549
    const/4 v2, 0x2

    .line 550
    if-eq v1, v2, :cond_6

    .line 552
    const/4 v2, 0x3

    .line 553
    if-eq v1, v2, :cond_5

    .line 555
    const/4 v2, 0x5

    .line 556
    if-eq v1, v2, :cond_4

    .line 558
    const-string v2, "SCO_STATE_("

    .line 560
    const-string v3, ")"

    .line 562
    invoke-static {v1, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 565
    move-result-object v1

    .line 566
    goto :goto_4

    .line 567
    :cond_4
    const-string v1, "SCO_STATE_DEACTIVATING"

    .line 569
    goto :goto_4

    .line 570
    :cond_5
    const-string v1, "SCO_STATE_ACTIVE_INTERNAL"

    .line 572
    goto :goto_4

    .line 573
    :cond_6
    const-string v1, "SCO_STATE_ACTIVE_EXTERNAL"

    .line 575
    goto :goto_4

    .line 576
    :cond_7
    const-string v1, "SCO_STATE_ACTIVATE_REQ"

    .line 578
    goto :goto_4

    .line 579
    :cond_8
    const-string v1, "SCO_STATE_INACTIVE"

    .line 581
    :goto_4
    const-string v2, "  mScoAudioMode: "

    .line 583
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 586
    move-result-object v0

    .line 587
    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 589
    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->scoAudioModeToString(I)Ljava/lang/String;

    .line 592
    move-result-object v1

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    move-result-object v0

    .line 600
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    .line 605
    const-string v1, "\n  mHearingAid: "

    .line 607
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 610
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 612
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    move-result-object v0

    .line 619
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    .line 624
    const-string v1, "\n  mLeAudio: "

    .line 626
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 631
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    move-result-object v0

    .line 638
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    .line 643
    const-string v1, "  mA2dp: "

    .line 645
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 648
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 650
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 656
    move-result-object v0

    .line 657
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    .line 662
    const-string v1, "  mAvrcpAbsVolSupported: "

    .line 664
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 667
    iget-boolean p0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    .line 669
    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 672
    return-void

    .line 673
    :goto_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    throw p0

    .line 675
    :sswitch_data_0
    .sparse-switch
        0x400 -> :sswitch_12
        0x404 -> :sswitch_11
        0x408 -> :sswitch_10
        0x40c -> :sswitch_f
        0x410 -> :sswitch_e
        0x414 -> :sswitch_d
        0x418 -> :sswitch_c
        0x41c -> :sswitch_b
        0x420 -> :sswitch_a
        0x424 -> :sswitch_9
        0x428 -> :sswitch_8
        0x42c -> :sswitch_7
        0x430 -> :sswitch_6
        0x434 -> :sswitch_5
        0x438 -> :sswitch_4
        0x43c -> :sswitch_3
        0x440 -> :sswitch_2
        0x444 -> :sswitch_1
        0x448 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getA2dp()Landroid/bluetooth/BluetoothA2dp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 6
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    monitor-exit p0

    .line 10
    monitor-exit v0

    .line 11
    return-object v1

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :catchall_1
    move-exception v1

    .line 15
    monitor-exit p0

    .line 16
    throw v1

    .line 17
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    throw p0
.end method

.method public final getA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/Integer;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result p0

    .line 23
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public final getCommunicationDevice()Landroid/media/AudioDeviceInfo;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    move-result-wide v1

    .line 8
    const-wide/16 v3, 0x0

    .line 10
    :cond_0
    iget v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-lez v5, :cond_1

    .line 14
    const-wide/16 v5, 0xbb8

    .line 16
    :try_start_1
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    .line 18
    sub-long v3, v5, v3

    .line 20
    invoke-virtual {v7, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    :try_start_2
    const-string v3, "AS.AudioDeviceBroker"

    .line 28
    const-string v4, "Interrupted while waiting for communication device update."

    .line 30
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    move-result-wide v3

    .line 37
    sub-long/2addr v3, v1

    .line 38
    cmp-long v5, v3, v5

    .line 40
    if-ltz v5, :cond_0

    .line 42
    const-string v1, "AS.AudioDeviceBroker"

    .line 44
    const-string v2, "Timeout waiting for communication device update."

    .line 46
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 52
    monitor-enter v1

    .line 53
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDeviceInt()Landroid/media/AudioDeviceInfo;

    .line 56
    move-result-object p0

    .line 57
    monitor-exit v1

    .line 58
    return-object p0

    .line 59
    :catchall_1
    move-exception p0

    .line 60
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    throw p0

    .line 62
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 63
    throw p0
.end method

.method public final getCommunicationDeviceInt()Landroid/media/AudioDeviceInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    .line 4
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 11
    move-result v0

    .line 12
    const/16 v1, 0xd

    .line 14
    if-ne v0, v1, :cond_0

    .line 16
    const/4 p0, 0x2

    .line 17
    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDeviceOfType(I)Landroid/media/AudioDeviceInfo;

    .line 20
    move-result-object p0

    .line 21
    :cond_0
    if-eqz p0, :cond_1

    .line 23
    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isValidCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 29
    :cond_1
    const/4 p0, 0x1

    .line 30
    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDeviceOfType(I)Landroid/media/AudioDeviceInfo;

    .line 33
    move-result-object p0

    .line 34
    if-nez p0, :cond_2

    .line 36
    invoke-static {}, Lcom/android/server/audio/AudioDeviceBroker;->getAvailableCommunicationDevices()Ljava/util/List;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_2

    .line 48
    const/4 p0, 0x0

    .line 49
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Landroid/media/AudioDeviceInfo;

    .line 55
    :cond_2
    return-object p0
.end method

.method public final getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 19
    iget v1, v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    .line 21
    if-ne v1, p1, :cond_0

    .line 23
    return-object v0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final getDefaultCommunicationDevice()Landroid/media/AudioDeviceAttributes;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 3
    iget v1, v0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mMode:I

    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v1, v2, :cond_1

    .line 9
    iget v0, v0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    .line 11
    const/16 v1, 0x3e8

    .line 13
    if-eq v0, v1, :cond_1

    .line 15
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const/high16 v0, 0x8000000

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v0

    .line 26
    filled-new-array {v0}, [Ljava/lang/Integer;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 37
    move-result-object p0

    .line 38
    if-nez p0, :cond_0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v3, Landroid/media/AudioDeviceAttributes;

    .line 43
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 45
    iget v1, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 47
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 49
    invoke-direct {v3, v1, p0, v0}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    :goto_0
    return-object v3
.end method

.method public final getImmutableDeviceInventory()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 3
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 10
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final getLeAudioGroupAddresses(I)Ljava/util/List;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_2

    .line 17
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 19
    if-nez v2, :cond_0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/16 v2, 0x16

    .line 24
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v1

    .line 32
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 44
    if-eqz v2, :cond_1

    .line 46
    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 48
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    .line 51
    move-result v3

    .line 52
    if-ne v3, p1, :cond_1

    .line 54
    new-instance v3, Landroid/util/Pair;

    .line 56
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getIdentityAddress()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    :goto_1
    return-object v0
.end method

.method public final getPriorityDevice(I)I
    .locals 9

    .line 1
    const/16 v0, 0xb

    .line 3
    const/4 v1, 0x2

    .line 4
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 6
    new-array v2, v0, [I

    .line 8
    fill-array-data v2, :array_0

    .line 11
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 13
    monitor-enter v3

    .line 14
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 16
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 19
    move-result-object v4

    .line 20
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x0

    .line 25
    move v6, v5

    .line 26
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v7

    .line 30
    if-eqz v7, :cond_1

    .line 32
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v7

    .line 36
    check-cast v7, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    move-result-object v8

    .line 42
    check-cast v8, Ljava/lang/String;

    .line 44
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    move-result-object v7

    .line 48
    check-cast v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 50
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 52
    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 58
    iget v7, v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 60
    const/high16 v8, -0x80000000

    .line 62
    and-int/2addr v8, v7

    .line 63
    if-eqz v8, :cond_0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    or-int/2addr v6, v7

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_4

    .line 70
    :cond_1
    :goto_1
    if-ge v5, v0, :cond_4

    .line 72
    aget p0, v2, v5

    .line 74
    if-ne p1, p0, :cond_2

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    and-int v4, v6, p0

    .line 79
    if-eqz v4, :cond_3

    .line 81
    move v1, p0

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    :goto_3
    monitor-exit v3

    .line 87
    return v1

    .line 88
    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p0

    .line 90
    nop

    .line 91
    :array_0
    .array-data 4
        0x8000
        0x80
        0x8
        0x4
        0x4000000
        0x2000
        0x4000
        0x1000
        0x400
        0x800
        0x2
    .end array-data
.end method

.method public final handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZLandroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZZLandroid/bluetooth/BluetoothDevice;)Z

    .line 10
    move-result p0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final handleFmRadioDeviceConnection()V
    .locals 5

    .line 1
    const-string/jumbo v0, "dummy"

    .line 4
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    .line 14
    const-string v3, ""

    .line 16
    const v4, -0x7fffe000

    .line 19
    invoke-direct {v2, v4, v0, v3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 24
    const/4 v0, 0x0

    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final initRoutingStrategyIds()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 8
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 26
    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 28
    if-ne v3, v1, :cond_1

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v2, v3}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_1

    .line 37
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    .line 40
    move-result v3

    .line 41
    iput v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 43
    :cond_1
    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    .line 45
    if-ne v3, v1, :cond_0

    .line 47
    const/16 v3, 0xa

    .line 49
    invoke-virtual {v2, v3}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    .line 58
    move-result v2

    .line 59
    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return-void
.end method

.method public final isDeviceActiveForCommunication(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 8
    move-result v0

    .line 9
    if-ne v0, p1, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    .line 13
    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 18
    move-result p0

    .line 19
    if-ne p0, p1, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final isDeviceConnected(Landroid/media/AudioDeviceAttributes;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 23
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 26
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_0

    .line 32
    const/4 p0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    return p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :catchall_1
    move-exception p0

    .line 41
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    :try_start_4
    throw p0

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 44
    throw p0
.end method

.method public final isDeviceOnForCommunication(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 13
    move-result p0

    .line 14
    if-ne p0, p1, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final isDeviceRequestedForCommunication(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 13
    move-result p0

    .line 14
    if-ne p0, p1, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final isDualModeActive()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_0

    .line 8
    monitor-exit p0

    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    .line 14
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    move-object p0, v0

    .line 17
    :goto_0
    if-eqz p0, :cond_1

    .line 19
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isLeAudioDualMode()Z

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_1
    return p0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p0

    .line 31
    throw v0
.end method

.method public final isInCommunication()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 10
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 15
    move-result p0

    .line 16
    if-ne p0, v1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    return v1
.end method

.method public final isRemoteVolumeControlSupported()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 6
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getVolumeControlSupport()Z

    .line 14
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    if-eqz v1, :cond_0

    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 23
    monitor-exit v0

    .line 24
    return v1

    .line 25
    :catchall_1
    move-exception p0

    .line 26
    goto :goto_2

    .line 27
    :goto_1
    monitor-exit p0

    .line 28
    throw v1

    .line 29
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    throw p0
.end method

.method public final isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 3
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mSpatializerHelper:Lcom/android/server/audio/SpatializerHelper;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final messageMutesMusic(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x7

    .line 6
    if-eq p1, v1, :cond_1

    .line 8
    const/16 v1, 0x1d

    .line 10
    if-eq p1, v1, :cond_1

    .line 12
    const/16 v1, 0xb

    .line 14
    if-ne p1, v1, :cond_3

    .line 16
    :cond_1
    const/4 p1, 0x3

    .line 17
    invoke-static {p1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 23
    sget-object v1, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    .line 25
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceSetForStream(I)Ljava/util/Set;

    .line 30
    move-result-object p0

    .line 31
    check-cast v1, Ljava/util/HashSet;

    .line 33
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object p1

    .line 37
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 53
    return v0

    .line 54
    :cond_3
    const/4 p0, 0x1

    .line 55
    return p0
.end method

.method public final muteRingtoneDuringVibration()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 12
    iget p0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 14
    if-ne p0, v1, :cond_0

    .line 16
    const-string p0, "AS.AudioService"

    .line 18
    const-string v0, "SPK ringtone volume set to 0 !!!"

    .line 20
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 p0, 0x0

    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-static {v0, p0, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    .line 28
    :cond_0
    return-void
.end method

.method public final onCheckCommunicationDeviceRemoval(Landroid/media/AudioDeviceAttributes;)V
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "onCheckCommunicationDeviceRemoval device: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->toString()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "AS.AudioDeviceBroker"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 27
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 43
    iget-object v3, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 45
    invoke-virtual {p1, v3}, Landroid/media/AudioDeviceAttributes;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    const-string/jumbo v4, "onCheckCommunicationDeviceRemoval removing client: "

    .line 56
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->toString()Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    .line 75
    iget-object v5, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    .line 77
    iget v6, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    .line 79
    iget-boolean v11, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mIsPrivileged:Z

    .line 81
    const/4 v9, -0x1

    .line 82
    const-string/jumbo v10, "onCheckCommunicationDeviceRemoval"

    .line 85
    const/4 v8, 0x0

    .line 86
    move-object v4, v3

    .line 87
    move-object v7, p1

    .line 88
    invoke-direct/range {v4 .. v11}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;-><init>(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;ZILjava/lang/String;Z)V

    .line 91
    const/16 v2, 0x2a

    .line 93
    const/4 v4, 0x2

    .line 94
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    return-void
.end method

.method public final onPersistAudioDeviceSettings()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 3
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 8
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    .line 11
    move-result v2

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    mul-int/lit8 v2, v2, 0x27

    .line 16
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 19
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 21
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/server/audio/AdiDeviceState;

    .line 41
    invoke-virtual {v2}, Lcom/android/server/audio/AdiDeviceState;->toPersistableString()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto/16 :goto_2

    .line 52
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 58
    const-string/jumbo v2, "|"

    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/android/server/audio/AdiDeviceState;

    .line 70
    invoke-virtual {v2}, Lcom/android/server/audio/AdiDeviceState;->toPersistableString()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    const-string v1, "AS.AudioDeviceBroker"

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo v3, "onPersistAudioDeviceSettings AdiDeviceState: "

    .line 90
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 100
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->readDeviceSettings()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_2

    .line 113
    return-void

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 116
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getSettings()Lcom/android/server/audio/SettingsAdapter;

    .line 119
    move-result-object v1

    .line 120
    if-nez v1, :cond_3

    .line 122
    const-string p0, "AS.AudioDeviceBroker"

    .line 124
    const-string v1, "No settings adapter when saving AdiDeviceState: "

    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 134
    :cond_3
    :try_start_1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 136
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 138
    const-string v1, "audio_device_inventory"

    .line 140
    const/4 v2, -0x2

    .line 141
    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 144
    move-result p0

    .line 145
    if-nez p0, :cond_4

    .line 147
    const-string p0, "AS.AudioDeviceBroker"

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    const-string/jumbo v2, "error saving AdiDeviceState: "

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v1

    .line 167
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    goto :goto_1

    .line 171
    :catch_0
    move-exception p0

    .line 172
    const-string v1, "AS.AudioDeviceBroker"

    .line 174
    const-string/jumbo v2, "error saving AdiDeviceState: "

    .line 177
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    move-result-object v0

    .line 181
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    :cond_4
    :goto_1
    return-void

    .line 185
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    throw p0
.end method

.method public final onSetCommunicationDeviceForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "onSetCommunicationDeviceForClient: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "AS.AudioDeviceBroker"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-boolean v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mOn:Z

    .line 23
    if-nez v0, :cond_1

    .line 25
    iget v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mUid:I

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 35
    if-eqz v1, :cond_1

    .line 37
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 39
    invoke-virtual {v1, v0}, Landroid/media/AudioDeviceAttributes;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 45
    :cond_0
    return-void

    .line 46
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mOn:Z

    .line 48
    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 52
    :goto_0
    move-object v4, v0

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 v0, 0x0

    .line 55
    goto :goto_0

    .line 56
    :goto_1
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mCb:Landroid/os/IBinder;

    .line 58
    iget v3, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mUid:I

    .line 60
    iget v5, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mScoAudioMode:I

    .line 62
    iget-boolean v6, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mIsPrivileged:Z

    .line 64
    iget-object v7, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mEventSource:Ljava/lang/String;

    .line 66
    move-object v1, p0

    .line 67
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationRouteForClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;IZLjava/lang/String;)V

    .line 70
    return-void
.end method

.method public final onSetForceUse(IILjava/lang/String;Z)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 4
    if-eqz p4, :cond_0

    .line 6
    const/16 v0, 0x24

    .line 8
    :goto_0
    move v2, v0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/16 v0, 0xd

    .line 12
    goto :goto_0

    .line 13
    :goto_1
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    move-object v1, p0

    .line 19
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 22
    :cond_1
    sget-object v0, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/utils/EventLogger;

    .line 24
    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    .line 26
    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    .line 29
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 32
    new-instance v0, Landroid/media/MediaMetrics$Item;

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    const-string v2, "audio.forceUse."

    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-static {p1}, Landroid/media/AudioSystem;->forceUseUsageToString(I)Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 55
    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 57
    const-string/jumbo v2, "onSetForceUse"

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 63
    move-result-object v0

    .line 64
    sget-object v1, Landroid/media/MediaMetrics$Property;->FORCE_USE_DUE_TO:Landroid/media/MediaMetrics$Key;

    .line 66
    invoke-virtual {v0, v1, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 69
    move-result-object v0

    .line 70
    sget-object v1, Landroid/media/MediaMetrics$Property;->FORCE_USE_MODE:Landroid/media/MediaMetrics$Key;

    .line 72
    invoke-static {p2}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo v1, "onSetForceUse(useCase<"

    .line 88
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ">, config<"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ">, fromA2dp<"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    const-string p4, ">, eventSource<"

    .line 112
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string p3, ">)"

    .line 120
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p3

    .line 127
    const-string p4, "AS.AudioDeviceBroker"

    .line 129
    invoke-static {p4, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setForceUse(II)V

    .line 137
    return-void
.end method

.method public final postApplyVolumeOnDevice(IILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 5
    new-instance v5, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    .line 7
    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;-><init>(IILjava/lang/String;)V

    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v6, 0x0

    .line 12
    const/16 v1, 0x1a

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 19
    return-void
.end method

.method public final postCheckCommunicationDeviceRemoval(Landroid/media/AudioDeviceAttributes;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    .line 8
    move-result v0

    .line 9
    sget-object v1, Lcom/android/server/audio/AudioDeviceBroker;->VALID_COMMUNICATION_DEVICE_TYPES:[I

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    const/16 v3, 0xd

    .line 14
    if-ge v2, v3, :cond_1

    .line 16
    aget v3, v1, v2

    .line 18
    if-ne v0, v3, :cond_0

    .line 20
    const/16 v0, 0x35

    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 26
    return-void

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public final postPersistAudioDeviceSettings()V
    .locals 7

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v4, 0x0

    .line 3
    const/16 v1, 0x36

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    const/16 v6, 0x3e8

    .line 9
    move-object v0, p0

    .line 10
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 13
    return-void
.end method

.method public final postSetLeAudioVolumeIndex(III)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;

    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;-><init>(III)V

    .line 6
    const/16 p1, 0x2e

    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 12
    return-void
.end method

.method public final postSetVolumeIndexForA2dpDevice(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getMainVolume()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 10
    const/16 v1, 0x80

    .line 12
    const/4 v2, 0x3

    .line 13
    if-eqz p2, :cond_0

    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-static {v2, p2, v1}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 21
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/server/audio/AudioService;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo p2, "update volume "

    .line 29
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string p2, " from "

    .line 37
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    const-string p1, "AS.AudioDeviceBroker"

    .line 49
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_1
    return-void
.end method

.method public final postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V
    .locals 1

    .line 1
    const/16 v0, 0x3b

    .line 3
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IILjava/lang/Object;)V

    .line 6
    return-void
.end method

.method public final preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper;->isBluetoothScoOn()Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    .line 9
    monitor-enter v1

    .line 10
    if-eqz v0, :cond_0

    .line 12
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    .line 14
    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_3

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_3

    .line 25
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 27
    iget-object v2, v0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 29
    if-nez v2, :cond_1

    .line 31
    move-object v0, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v0, v0, Lcom/android/server/audio/BtHelper;->mResolvedScoAudioDevices:Ljava/util/Map;

    .line 35
    check-cast v0, Ljava/util/HashMap;

    .line 37
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 43
    if-eqz v0, :cond_2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;

    .line 49
    move-result-object v0

    .line 50
    :goto_1
    if-eqz v0, :cond_3

    .line 52
    return-object v0

    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    .line 56
    move-result-object p0

    .line 57
    if-eqz p0, :cond_5

    .line 59
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 62
    move-result v0

    .line 63
    const/4 v2, 0x7

    .line 64
    if-ne v0, v2, :cond_4

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    return-object p0

    .line 68
    :cond_5
    :goto_2
    return-object v1

    .line 69
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p0
.end method

.method public final queueOnBluetoothActiveDeviceChanged(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 3
    invoke-virtual {v0}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 16
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 24
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    new-instance v2, Landroid/media/MediaMetrics$Item;

    .line 34
    const-string v3, "audio.device.queueOnBluetoothActiveDeviceChanged_update"

    .line 36
    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 39
    sget-object v3, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 41
    invoke-virtual {v2, v3, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 44
    move-result-object v0

    .line 45
    sget-object v2, Landroid/media/MediaMetrics$Property;->STATUS:Landroid/media/MediaMetrics$Key;

    .line 47
    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 49
    invoke-virtual {v3}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    .line 52
    move-result v3

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 64
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 66
    monitor-enter v0

    .line 67
    :try_start_0
    const-string v2, "AS.AudioDeviceBroker"

    .line 69
    const-string/jumbo v3, "queueOnBluetoothActiveDeviceChanged A2DP config change"

    .line 72
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 77
    invoke-static {p1, v2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 80
    move-result-object p1

    .line 81
    const/16 v2, 0xb

    .line 83
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 86
    monitor-exit v0

    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw p0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 93
    monitor-enter v0

    .line 94
    :try_start_1
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 96
    invoke-virtual {v2}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    .line 99
    move-result v2

    .line 100
    const/16 v3, 0x16

    .line 102
    const/16 v4, 0x2d

    .line 104
    if-ne v2, v3, :cond_1

    .line 106
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    .line 108
    if-eqz v2, :cond_1

    .line 110
    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 112
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 120
    const-string/jumbo v3, "connected"

    .line 123
    invoke-static {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    .line 126
    const-string v2, "AS.AudioDeviceBroker"

    .line 128
    const-string/jumbo v3, "queueOnBluetoothActiveDeviceChanged BLE STATE_CONNECTED_IMPLICIT"

    .line 131
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 136
    const/16 v3, 0x63

    .line 138
    invoke-static {p1, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p0, v4, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 145
    monitor-exit v0

    .line 146
    return-void

    .line 147
    :catchall_1
    move-exception p0

    .line 148
    goto :goto_1

    .line 149
    :cond_1
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    .line 151
    if-eqz v2, :cond_2

    .line 153
    const-string/jumbo v3, "disconnected"

    .line 156
    invoke-static {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    .line 159
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    .line 161
    const/4 v3, 0x0

    .line 162
    invoke-static {p1, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {p0, v4, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 169
    :cond_2
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 171
    if-eqz v2, :cond_3

    .line 173
    const-string/jumbo v3, "connected"

    .line 176
    invoke-static {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    .line 179
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 181
    invoke-static {p1, v2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p0, v4, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 188
    :cond_3
    monitor-exit v0

    .line 189
    :goto_0
    return-void

    .line 190
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 191
    throw p0
.end method

.method public final readDeviceSettings()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getSettings()Lcom/android/server/audio/SettingsAdapter;

    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    if-nez p0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "audio_device_inventory"

    .line 16
    const/4 v1, -0x2

    .line 17
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/Exception;

    .line 24
    const-string/jumbo v0, "readDeviceSettings_NPE"

    .line 27
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 30
    const-string v0, "AS.AudioDeviceBroker"

    .line 32
    const-string v1, "No settings adapter or content resolver to read device settings"

    .line 34
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    const-string p0, ""

    .line 39
    return-object p0
.end method

.method public final reapplyAudioHalBluetoothState()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "reapplyAudioHalBluetoothState() mBluetoothScoOnApplied: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", mBluetoothA2dpSuspendedApplied: "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ", mBluetoothLeSuspendedApplied: "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    const-string v1, "AS.AudioDeviceBroker"

    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    .line 45
    const-string v1, "LeAudioSuspended=true"

    .line 47
    const-string v2, "A2dpSuspended=true"

    .line 49
    if-eqz v0, :cond_0

    .line 51
    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 54
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 57
    const-string p0, "BT_SCO=on"

    .line 59
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    const-string v0, "BT_SCO=off"

    .line 65
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 68
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    .line 70
    if-eqz v0, :cond_1

    .line 72
    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const-string v0, "A2dpSuspended=false"

    .line 78
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 81
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    .line 83
    if-eqz p0, :cond_2

    .line 85
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const-string p0, "LeAudioSuspended=false"

    .line 91
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 94
    :goto_1
    return-void
.end method

.method public final removeCommunicationRouteClient(Landroid/os/IBinder;)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 19
    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    .line 21
    if-ne v2, p1, :cond_0

    .line 23
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->unregisterDeathRecipient()V

    .line 26
    iget p1, v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_1

    .line 34
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 36
    const/16 v2, 0x38

    .line 38
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 43
    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 46
    return-object v1

    .line 47
    :cond_2
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public final requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v2, "requestedCommunicationDevice: "

    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, " mAudioModeOwner: "

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 29
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    const-string v1, "AS.AudioDeviceBroker"

    .line 42
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-object v0
.end method

.method public final resetBtScoOnByApp()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 3
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBtScoOnByApp:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBtScoOnByApp:Z

    .line 10
    const-string p0, "AS.AudioService"

    .line 12
    const-string/jumbo v0, "resetBtScoOnByApp"

    .line 15
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_0
    return-void
.end method

.method public final sendIILMsg(IIIILjava/lang/Object;I)V
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    if-ne p2, v0, :cond_1

    .line 12
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 14
    invoke-virtual {p2, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_1

    .line 20
    return-void

    .line 21
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_2

    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 30
    move-result-wide v0

    .line 31
    :try_start_0
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 33
    const-wide/16 v2, 0x1388

    .line 35
    invoke-virtual {p2, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    goto :goto_3

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_2

    .line 44
    :catch_0
    move-exception p2

    .line 45
    :try_start_1
    const-string v2, "AS.AudioDeviceBroker"

    .line 47
    const-string v3, "Exception acquiring wakelock"

    .line 49
    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    goto :goto_1

    .line 53
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    throw p0

    .line 57
    :cond_2
    :goto_3
    sget-object p2, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v0

    .line 63
    check-cast p2, Ljava/util/HashSet;

    .line 65
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_3

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->checkMessagesMuteMusic(I)V

    .line 74
    :cond_3
    sget-object p2, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    .line 76
    monitor-enter p2

    .line 77
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 80
    move-result-wide v0

    .line 81
    int-to-long v2, p6

    .line 82
    add-long/2addr v0, v2

    .line 83
    const/4 p6, 0x2

    .line 84
    if-eq p1, p6, :cond_4

    .line 86
    const/4 p6, 0x7

    .line 87
    if-eq p1, p6, :cond_4

    .line 89
    const/16 p6, 0x31

    .line 91
    if-eq p1, p6, :cond_4

    .line 93
    const/16 p6, 0xac8

    .line 95
    if-eq p1, p6, :cond_4

    .line 97
    const/16 p6, 0xa

    .line 99
    if-eq p1, p6, :cond_4

    .line 101
    const/16 p6, 0xb

    .line 103
    if-eq p1, p6, :cond_4

    .line 105
    goto :goto_4

    .line 106
    :cond_4
    sget-wide v2, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    .line 108
    cmp-long p6, v2, v0

    .line 110
    if-ltz p6, :cond_5

    .line 112
    const-wide/16 v0, 0x1e

    .line 114
    add-long/2addr v0, v2

    .line 115
    :cond_5
    sput-wide v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    .line 117
    :goto_4
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 119
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 126
    monitor-exit p2

    .line 127
    return-void

    .line 128
    :catchall_1
    move-exception p0

    .line 129
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    throw p0
.end method

.method public final sendILMsgNoDelay(IILjava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    move-object v0, p0

    .line 5
    move v1, p1

    .line 6
    move v3, p2

    .line 7
    move-object v5, p3

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 11
    return-void
.end method

.method public final sendIMsgNoDelay(III)V
    .locals 7

    .line 1
    const/4 v6, 0x0

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 11
    return-void
.end method

.method public final sendLMsgNoDelay(IILjava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v6, 0x0

    .line 2
    const/4 v3, 0x0

    .line 3
    const/4 v4, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move-object v5, p3

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 11
    return-void
.end method

.method public final setA2dpSuspended(Ljava/lang/String;ZZ)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setA2dpSuspended source: "

    .line 4
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "AS.AudioDeviceBroker"

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string p1, ", enable: "

    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    const-string p1, ", internal: "

    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    const-string p1, ", mBluetoothA2dpSuspendedInt: "

    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    const-string p1, ", mBluetoothA2dpSuspendedExt: "

    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    .line 50
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-eqz p3, :cond_0

    .line 62
    iput-boolean p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    iput-boolean p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    .line 72
    monitor-exit v1

    .line 73
    return-void

    .line 74
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p0
.end method

.method public final setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 6
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAvrcpAbsoluteVolumeSupported()Z

    .line 15
    move-result p1

    .line 16
    xor-int/lit8 p1, p1, 0x1

    .line 18
    const-string/jumbo v1, "setActiveBluetoothDevice"

    .line 21
    invoke-virtual {p0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexForA2dpDevice(Ljava/lang/String;Z)V

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final setBluetoothA2dpOnInt(Ljava/lang/String;ZZ)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setBluetoothA2dpOn("

    .line 4
    const-string v1, ") from u/pid:"

    .line 6
    invoke-static {v0, v1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "/"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, " src:"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    if-eqz p2, :cond_0

    .line 48
    const/4 p2, 0x0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/16 p2, 0xa

    .line 52
    :goto_0
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IILjava/lang/String;Z)V

    .line 56
    return-void
.end method

.method public final setBluetoothScoOn(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const-string v0, "AS.AudioDeviceBroker"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "setBluetoothScoOn: "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, " "

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x7

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    .line 36
    monitor-enter v1

    .line 37
    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    .line 39
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    .line 42
    const/16 p2, 0x2b

    .line 44
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IILjava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->resetBtScoOnByApp()V

    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final setCommunicationDevice(Landroid/os/IBinder;ILandroid/media/AudioDeviceInfo;ZLjava/lang/String;)Z
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move v3, p2

    .line 3
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_USB_HEADSET_CALL_SUPPORT:Z

    .line 5
    const/4 v9, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 8
    if-eqz p3, :cond_0

    .line 10
    invoke-virtual {p3}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 13
    move-result v1

    .line 14
    const/16 v2, 0x16

    .line 16
    if-ne v1, v2, :cond_0

    .line 18
    invoke-static {v9}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDeviceOfType(I)Landroid/media/AudioDeviceInfo;

    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v1, p3

    .line 24
    :goto_0
    const-string v2, "AS.AudioDeviceBroker"

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v5, "setCommunicationDevice, device: "

    .line 31
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    const-string v5, ", uid: "

    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 54
    monitor-enter v2

    .line 55
    const/4 v4, 0x0

    .line 56
    if-nez v1, :cond_1

    .line 58
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 61
    move-result-object v5

    .line 62
    if-nez v5, :cond_1

    .line 64
    monitor-exit v2

    .line 65
    return v4

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto :goto_5

    .line 68
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v10, v0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    .line 71
    monitor-enter v10

    .line 72
    :try_start_1
    iget v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    .line 74
    add-int/2addr v2, v9

    .line 75
    iput v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    .line 77
    if-eqz v1, :cond_2

    .line 79
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    .line 81
    invoke-direct {v2, v1}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 84
    :goto_1
    move-object v5, v2

    .line 85
    goto :goto_2

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    goto :goto_4

    .line 88
    :cond_2
    const/4 v2, 0x0

    .line 89
    goto :goto_1

    .line 90
    :goto_2
    new-instance v11, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    .line 92
    if-eqz v1, :cond_3

    .line 94
    move v6, v9

    .line 95
    goto :goto_3

    .line 96
    :cond_3
    move v6, v4

    .line 97
    :goto_3
    const/4 v7, -0x1

    .line 98
    move-object v1, v11

    .line 99
    move-object v2, p1

    .line 100
    move v3, p2

    .line 101
    move-object v4, v5

    .line 102
    move v5, v6

    .line 103
    move v6, v7

    .line 104
    move-object/from16 v7, p5

    .line 106
    move/from16 v8, p4

    .line 108
    invoke-direct/range {v1 .. v8}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;-><init>(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;ZILjava/lang/String;Z)V

    .line 111
    const/16 v1, 0x2a

    .line 113
    const/4 v2, 0x2

    .line 114
    invoke-virtual {p0, v1, v2, v11}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 117
    monitor-exit v10

    .line 118
    return v9

    .line 119
    :goto_4
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    throw v0

    .line 121
    :goto_5
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    throw v0
.end method

.method public final setCommunicationRouteForClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;IZLjava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    move/from16 v4, p5

    .line 11
    move-object/from16 v5, p6

    .line 13
    const-string v6, "AS.AudioDeviceBroker"

    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v8, "setCommunicationRouteForClient: device: "

    .line 20
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const-string v8, ", eventSource: "

    .line 28
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v7

    .line 38
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-object v6, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 43
    new-instance v7, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 45
    new-instance v8, Ljava/lang/StringBuilder;

    .line 47
    const-string/jumbo v9, "setCommunicationRouteForClient for uid: "

    .line 50
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v9, " device: "

    .line 58
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    const-string v9, " isPrivileged: "

    .line 66
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    const-string v9, " from API: "

    .line 74
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v8

    .line 84
    invoke-direct {v7, v8}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 87
    const-string v8, "AS.AudioDeviceBroker"

    .line 89
    const/4 v9, 0x0

    .line 90
    invoke-virtual {v7, v9, v8}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 93
    invoke-virtual {v6, v7}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 96
    const/4 v7, 0x7

    .line 97
    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    .line 100
    move-result v8

    .line 101
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 104
    move-result-object v10

    .line 105
    const/4 v11, 0x0

    .line 106
    if-eqz v10, :cond_0

    .line 108
    iget-object v12, v10, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 110
    iget-boolean v10, v10, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mIsPrivileged:Z

    .line 112
    goto :goto_0

    .line 113
    :cond_0
    move v10, v9

    .line 114
    move-object v12, v11

    .line 115
    :goto_0
    if-eqz v3, :cond_2

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 120
    move-result v13

    .line 121
    if-ne v13, v7, :cond_1

    .line 123
    iget-object v13, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 125
    const/16 v14, 0xacc

    .line 127
    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    .line 130
    move-result v13

    .line 131
    if-eqz v13, :cond_1

    .line 133
    iget-object v13, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 135
    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    const-string v13, "AS.AudioDeviceBroker"

    .line 140
    const-string v14, "MSG_CHECK_ABNORMAL_SCO removeMessages when creating Sco client."

    .line 142
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->addCommunicationRouteClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 148
    move-result-object v4

    .line 149
    if-nez v4, :cond_3

    .line 151
    const-string v13, "AS.AudioDeviceBroker"

    .line 153
    new-instance v14, Ljava/lang/StringBuilder;

    .line 155
    const-string/jumbo v15, "setCommunicationRouteForClient: could not add client for uid: "

    .line 158
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    const-string v15, " and device: "

    .line 166
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v14

    .line 176
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    goto :goto_1

    .line 180
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 183
    move-result-object v4

    .line 184
    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 186
    return-void

    .line 187
    :cond_4
    if-eqz v3, :cond_7

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 192
    move-result v4

    .line 193
    if-ne v4, v7, :cond_7

    .line 195
    const-string/jumbo v4, "receiveBtEvent"

    .line 198
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 201
    move-result v4

    .line 202
    if-eqz v4, :cond_7

    .line 204
    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoUid:I

    .line 206
    if-eqz v4, :cond_5

    .line 208
    if-eq v4, v2, :cond_6

    .line 210
    :cond_5
    iput v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoUid:I

    .line 212
    iput v9, v0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    .line 214
    iput-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mScoCb:Landroid/os/IBinder;

    .line 216
    :cond_6
    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    .line 218
    add-int/lit8 v4, v4, 0x1

    .line 220
    iput v4, v0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    .line 222
    goto :goto_2

    .line 223
    :cond_7
    iput v9, v0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoUid:I

    .line 225
    iput v9, v0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    .line 227
    iput-object v11, v0, Lcom/android/server/audio/AudioDeviceBroker;->mScoCb:Landroid/os/IBinder;

    .line 229
    :goto_2
    iget-boolean v4, v0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    .line 231
    if-nez v4, :cond_b

    .line 233
    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    .line 236
    move-result v4

    .line 237
    if-eqz v4, :cond_a

    .line 239
    if-eqz v8, :cond_8

    .line 241
    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    .line 244
    move-result v7

    .line 245
    if-nez v7, :cond_a

    .line 247
    :cond_8
    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 249
    monitor-enter v4

    .line 250
    :try_start_0
    new-instance v7, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 252
    invoke-direct {v7, v5}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v6, v7}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 258
    const/16 v6, 0xc

    .line 260
    move/from16 v7, p4

    .line 262
    invoke-virtual {v4, v6, v7}, Lcom/android/server/audio/BtHelper;->requestScoState(II)Z

    .line 265
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit v4

    .line 267
    if-nez v6, :cond_b

    .line 269
    const-string v4, "AS.AudioDeviceBroker"

    .line 271
    const-string/jumbo v6, "setCommunicationRouteForClient: failure to start BT SCO for uid: "

    .line 274
    invoke-static {v2, v6, v4}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 277
    if-eqz v12, :cond_9

    .line 279
    invoke-virtual {v0, v1, v2, v12, v10}, Lcom/android/server/audio/AudioDeviceBroker;->addCommunicationRouteClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 282
    goto :goto_3

    .line 283
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 286
    :goto_3
    const/4 v1, 0x3

    .line 287
    const/4 v2, 0x2

    .line 288
    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 291
    goto :goto_4

    .line 292
    :catchall_0
    move-exception v0

    .line 293
    monitor-exit v4

    .line 294
    throw v0

    .line 295
    :cond_a
    if-nez v4, :cond_b

    .line 297
    if-eqz v8, :cond_b

    .line 299
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 301
    invoke-virtual {v1, v5}, Lcom/android/server/audio/BtHelper;->stopBluetoothSco(Ljava/lang/String;)V

    .line 304
    :cond_b
    :goto_4
    const/16 v1, 0x1a

    .line 306
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    .line 309
    move-result v1

    .line 310
    if-nez v1, :cond_c

    .line 312
    const/16 v1, 0x1b

    .line 314
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    .line 317
    move-result v1

    .line 318
    if-eqz v1, :cond_d

    .line 320
    :cond_c
    if-eqz v3, :cond_d

    .line 322
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 324
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getBluetoothContextualVolumeStream()I

    .line 327
    move-result v1

    .line 328
    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 331
    move-result v2

    .line 332
    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 334
    invoke-virtual {v3, v1, v2}, Lcom/android/server/audio/AudioService;->getVssVolumeForDevice(II)I

    .line 337
    move-result v2

    .line 338
    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 340
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 342
    aget-object v3, v3, v1

    .line 344
    iget v3, v3, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 346
    const-string v4, "AS.AudioDeviceBroker"

    .line 348
    const-string/jumbo v6, "setCommunicationRouteForClient restoring LE Audio device volume lvl."

    .line 351
    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetLeAudioVolumeIndex(III)V

    .line 357
    :cond_d
    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRoute(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public final setDualA2dpMode(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 6
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setDualA2dpMode(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 9
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dp()Landroid/bluetooth/BluetoothA2dp;

    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_4

    .line 20
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_4

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x2

    .line 32
    if-eqz p2, :cond_1

    .line 34
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object p1

    .line 38
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_3

    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 50
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->semGetAudioType()I

    .line 53
    move-result p2

    .line 54
    if-ne p2, v4, :cond_0

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    .line 62
    move-result-object p1

    .line 63
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object p2

    .line 67
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 73
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 79
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_2

    .line 85
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->semGetAudioType()I

    .line 88
    move-result p1

    .line 89
    if-ne p1, v4, :cond_3

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    move v3, v1

    .line 93
    :goto_0
    invoke-static {v3}, Lcom/samsung/android/server/audio/utils/BtUtils;->setBtVolumeMonitor(Z)V

    .line 96
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    const-string/jumbo p1, "setDualA2dpMode"

    .line 100
    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexForA2dpDevice(Ljava/lang/String;Z)V

    .line 103
    return-void

    .line 104
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    throw p0
.end method

.method public final setForceCommunicationClientStateAndDelayedCheck(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;ZZ)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 4
    iput-boolean v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mPlaybackActive:Z

    .line 6
    :cond_0
    if-eqz p3, :cond_1

    .line 8
    iput-boolean v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mRecordingActive:Z

    .line 10
    :cond_1
    iget p2, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    .line 12
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    .line 15
    move-result p1

    .line 16
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 19
    move-result-object p3

    .line 20
    if-eqz p3, :cond_2

    .line 22
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 24
    const/16 v1, 0x38

    .line 26
    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 32
    move-result-wide v2

    .line 33
    const/16 v0, 0x1770

    .line 35
    int-to-long v4, v0

    .line 36
    add-long/2addr v2, v4

    .line 37
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 39
    invoke-virtual {p0, v1, p2, p1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 46
    :cond_2
    return-void
.end method

.method public final setForceUse_Async(IILjava/lang/String;)V
    .locals 7

    .line 1
    const/4 v1, 0x4

    .line 2
    const/4 v2, 0x2

    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move v3, p1

    .line 6
    move v4, p2

    .line 7
    move-object v5, p3

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 11
    return-void
.end method

.method public final setLeAudioSuspended(Ljava/lang/String;ZZ)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setLeAudioSuspended source: "

    .line 4
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "AS.AudioDeviceBroker"

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string p1, ", enable: "

    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    const-string p1, ", internal: "

    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    const-string p1, ", mBluetoothLeSuspendedInt: "

    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    const-string p1, ", mBluetoothLeSuspendedExt: "

    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    .line 50
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-eqz p3, :cond_0

    .line 62
    iput-boolean p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    iput-boolean p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    .line 72
    monitor-exit v1

    .line 73
    return-void

    .line 74
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p0
.end method

.method public final setSpeakerphoneOn(Landroid/os/IBinder;IZZLjava/lang/String;)V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "setSpeakerphoneOn, on: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    move v1, p3

    .line 10
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, " uid: "

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move v4, p2

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v2, "AS.AudioDeviceBroker"

    .line 28
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    .line 33
    new-instance v5, Landroid/media/AudioDeviceAttributes;

    .line 35
    const-string v2, ""

    .line 37
    const/4 v10, 0x2

    .line 38
    invoke-direct {v5, v10, v2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 41
    const/4 v7, -0x1

    .line 42
    move-object v2, v0

    .line 43
    move-object v3, p1

    .line 44
    move v6, p3

    .line 45
    move-object/from16 v8, p5

    .line 47
    move v9, p4

    .line 48
    invoke-direct/range {v2 .. v9}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;-><init>(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;ZILjava/lang/String;Z)V

    .line 51
    const/16 v1, 0x2a

    .line 53
    move-object v2, p0

    .line 54
    invoke-virtual {p0, v1, v10, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 57
    return-void
.end method

.method public final skipSendingAVRCPVolume(I)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    .line 8
    const/4 v2, -0x1

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 12
    if-ne p1, v2, :cond_0

    .line 14
    iget p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    :goto_0
    monitor-exit v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v1, p0, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/Integer;

    .line 35
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result p0

    .line 39
    monitor-exit v0

    .line 40
    :goto_1
    return-void

    .line 41
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 19
    iget v2, v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    .line 21
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 23
    iget v3, v3, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    .line 25
    if-ne v2, v3, :cond_0

    .line 27
    return-object v1

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 30
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 38
    iget v0, v0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mPid:I

    .line 40
    if-nez v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 51
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 57
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 59
    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 65
    return-object p0

    .line 66
    :cond_2
    const/4 p0, 0x0

    .line 67
    return-object p0
.end method

.method public final updateActiveCommunicationDevice()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_2

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 14
    invoke-virtual {v2, v1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 24
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 26
    iget v0, v0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    .line 28
    const/4 v1, 0x1

    .line 29
    if-ne v0, v1, :cond_0

    .line 31
    const-string v0, "AS.AudioDeviceBroker"

    .line 33
    const-string/jumbo v1, "updateActiveCommunicationDevice(): no device for phone strategy"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    .line 42
    return-void

    .line 43
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 49
    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {v1, v0}, Landroid/media/AudioManager;->getDeviceInfoFromTypeAndAddress(ILjava/lang/String;)Landroid/media/AudioDeviceInfo;

    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    .line 63
    return-void
.end method

.method public final updateAudioHalBluetoothState()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    .line 3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    .line 5
    const-string v2, "LeAudioSuspended=true"

    .line 7
    const-string v3, "A2dpSuspended=true"

    .line 9
    const-string v4, "AS.AudioDeviceBroker"

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eq v0, v1, :cond_4

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v1, "updateAudioHalBluetoothState() mBluetoothScoOn: "

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ", mBluetoothScoOnApplied: "

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    .line 46
    const-string v1, "BT_SCO=off"

    .line 48
    if-eqz v0, :cond_3

    .line 50
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    .line 52
    if-nez v0, :cond_0

    .line 54
    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 57
    iput-boolean v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    .line 59
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    .line 61
    if-nez v0, :cond_1

    .line 63
    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 66
    iput-boolean v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 70
    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper;->isBluetoothScoOn()Z

    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_2

    .line 76
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const-string v0, "BT_SCO=on"

    .line 82
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 89
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    .line 93
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    .line 95
    if-nez v0, :cond_10

    .line 97
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    .line 99
    const/4 v1, 0x0

    .line 100
    if-nez v0, :cond_6

    .line 102
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    .line 104
    if-eqz v0, :cond_5

    .line 106
    goto :goto_1

    .line 107
    :cond_5
    move v0, v1

    .line 108
    goto :goto_2

    .line 109
    :cond_6
    :goto_1
    move v0, v5

    .line 110
    :goto_2
    iget-boolean v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    .line 112
    if-eq v0, v6, :cond_a

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v6, "updateAudioHalBluetoothState() mBluetoothA2dpSuspendedExt: "

    .line 119
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    iget-boolean v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    .line 124
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    const-string v6, ", mBluetoothA2dpSuspendedInt: "

    .line 129
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-boolean v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    .line 134
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    const-string v6, ", mBluetoothA2dpSuspendedApplied: "

    .line 139
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-boolean v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    .line 144
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v0

    .line 151
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    .line 156
    if-nez v0, :cond_8

    .line 158
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    .line 160
    if-eqz v0, :cond_7

    .line 162
    goto :goto_3

    .line 163
    :cond_7
    move v0, v1

    .line 164
    goto :goto_4

    .line 165
    :cond_8
    :goto_3
    move v0, v5

    .line 166
    :goto_4
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    .line 168
    if-eqz v0, :cond_9

    .line 170
    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 173
    goto :goto_5

    .line 174
    :cond_9
    const-string v0, "A2dpSuspended=false"

    .line 176
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 179
    :cond_a
    :goto_5
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    .line 181
    if-nez v0, :cond_c

    .line 183
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    .line 185
    if-eqz v0, :cond_b

    .line 187
    goto :goto_6

    .line 188
    :cond_b
    move v0, v1

    .line 189
    goto :goto_7

    .line 190
    :cond_c
    :goto_6
    move v0, v5

    .line 191
    :goto_7
    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    .line 193
    if-eq v0, v3, :cond_10

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    .line 197
    const-string/jumbo v3, "updateAudioHalBluetoothState() mBluetoothLeSuspendedExt: "

    .line 200
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    .line 205
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 208
    const-string v3, ", mBluetoothLeSuspendedInt: "

    .line 210
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    .line 215
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 218
    const-string v3, ", mBluetoothLeSuspendedApplied: "

    .line 220
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    .line 225
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object v0

    .line 232
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    .line 237
    if-nez v0, :cond_e

    .line 239
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    .line 241
    if-eqz v0, :cond_d

    .line 243
    goto :goto_8

    .line 244
    :cond_d
    move v5, v1

    .line 245
    :cond_e
    :goto_8
    iput-boolean v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    .line 247
    if-eqz v5, :cond_f

    .line 249
    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 252
    goto :goto_9

    .line 253
    :cond_f
    const-string p0, "LeAudioSuspended=false"

    .line 255
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 258
    :cond_10
    :goto_9
    return-void
.end method

.method public final updateAvrcpAbsoluteVolumeSupported()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->isAvrcpAbsoluteVolumeSupportedForActiveDevice()Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 9
    invoke-virtual {v1, v0}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 12
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 14
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 16
    if-eq v1, v0, :cond_0

    .line 18
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    .line 20
    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    const-string v4, "a2dp AVC : "

    .line 26
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    invoke-direct {v2, v3}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 42
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 44
    return v0
.end method

.method public final updateCommunicationRoute(Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v8, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    .line 8
    move-result-object v9

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v2, "updateCommunicationRoute, preferredCommunicationDevice: "

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    const-string v3, " eventSource: "

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    const-string v10, "AS.AudioDeviceBroker"

    .line 34
    invoke-static {v10, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 39
    new-instance v4, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-direct {v4, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 65
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceBroker;->mReceiverSupported:Ljava/lang/Boolean;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 70
    move-result v0

    .line 71
    const-string/jumbo v1, "updateCommunicationRoute set default Device = "

    .line 74
    iget-object v2, v8, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 76
    const/4 v11, 0x2

    .line 77
    const/4 v3, 0x7

    .line 78
    const/4 v12, 0x0

    .line 79
    const/4 v4, 0x1

    .line 80
    if-nez v0, :cond_2

    .line 82
    if-nez v9, :cond_1

    .line 84
    const/4 v0, 0x0

    .line 85
    iput-object v0, v8, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallDevice:Landroid/media/AudioDeviceAttributes;

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioDeviceBroker;->getDefaultCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v8, v3}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    .line 96
    move-result v3

    .line 97
    if-nez v3, :cond_0

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 107
    move-result v1

    .line 108
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget v1, v8, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 120
    new-array v3, v4, [Landroid/media/AudioDeviceAttributes;

    .line 122
    aput-object v0, v3, v12

    .line 124
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v2, v1, v4, v0}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForStrategy(IZLjava/util/List;)I

    .line 131
    goto :goto_0

    .line 132
    :cond_0
    iget v0, v8, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 134
    invoke-virtual {v2, v0, v4}, Lcom/android/server/audio/AudioDeviceInventory;->clearDevicesRoleForStrategy(IZ)I

    .line 137
    :goto_0
    iget-object v1, v2, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 139
    monitor-enter v1

    .line 140
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory;->applyConnectedDevicesRoles_l()V

    .line 143
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory;->reapplyExternalDevicesRoles()V

    .line 147
    goto/16 :goto_3

    .line 149
    :catchall_0
    move-exception v0

    .line 150
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    throw v0

    .line 152
    :cond_1
    iput-object v9, v8, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallDevice:Landroid/media/AudioDeviceAttributes;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    const-string/jumbo v1, "updateCommunicationRoute return already mCurrentCallDevice = "

    .line 159
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    iget-object v1, v8, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallDevice:Landroid/media/AudioDeviceAttributes;

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v0

    .line 171
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget v0, v8, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 176
    new-array v1, v4, [Landroid/media/AudioDeviceAttributes;

    .line 178
    aput-object v9, v1, v12

    .line 180
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v2, v0, v4, v1}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForStrategy(IZLjava/util/List;)I

    .line 187
    goto/16 :goto_3

    .line 189
    :cond_2
    if-nez v9, :cond_4

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioDeviceBroker;->getDefaultCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    .line 194
    move-result-object v0

    .line 195
    if-eqz v0, :cond_3

    .line 197
    invoke-virtual {v8, v3}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    .line 200
    move-result v3

    .line 201
    if-nez v3, :cond_3

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    .line 205
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 211
    move-result v1

    .line 212
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object v1

    .line 219
    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget v1, v8, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 224
    new-array v3, v4, [Landroid/media/AudioDeviceAttributes;

    .line 226
    aput-object v0, v3, v12

    .line 228
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v2, v1, v4, v3}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForStrategy(IZLjava/util/List;)I

    .line 235
    iget v1, v8, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    .line 237
    new-array v3, v4, [Landroid/media/AudioDeviceAttributes;

    .line 239
    aput-object v0, v3, v12

    .line 241
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v2, v1, v4, v0}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForStrategy(IZLjava/util/List;)I

    .line 248
    goto :goto_1

    .line 249
    :cond_3
    iget v0, v8, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 251
    invoke-virtual {v2, v0, v4}, Lcom/android/server/audio/AudioDeviceInventory;->clearDevicesRoleForStrategy(IZ)I

    .line 254
    iget v0, v8, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    .line 256
    invoke-virtual {v2, v0, v4}, Lcom/android/server/audio/AudioDeviceInventory;->clearDevicesRoleForStrategy(IZ)I

    .line 259
    :goto_1
    iget-object v1, v2, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 261
    monitor-enter v1

    .line 262
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory;->applyConnectedDevicesRoles_l()V

    .line 265
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 266
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory;->reapplyExternalDevicesRoles()V

    .line 269
    goto :goto_2

    .line 270
    :catchall_1
    move-exception v0

    .line 271
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 272
    throw v0

    .line 273
    :cond_4
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 275
    iget v0, v0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    .line 277
    const/16 v1, 0x3e8

    .line 279
    if-ne v0, v1, :cond_6

    .line 281
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    .line 283
    if-eqz v0, :cond_6

    .line 285
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 288
    move-result v0

    .line 289
    if-ne v0, v11, :cond_6

    .line 291
    invoke-virtual {v9}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 294
    move-result v0

    .line 295
    if-ne v0, v3, :cond_6

    .line 297
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 299
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 302
    move-result-object v0

    .line 303
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    move-result v3

    .line 307
    if-eqz v3, :cond_6

    .line 309
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    move-result-object v3

    .line 313
    check-cast v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 315
    iget-object v5, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 317
    invoke-virtual {v5}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 320
    move-result v5

    .line 321
    if-ne v5, v11, :cond_5

    .line 323
    iget v5, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    .line 325
    if-ne v5, v1, :cond_5

    .line 327
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 329
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 332
    const-string/jumbo v0, "updateCommunicationRoute removed SPK client"

    .line 335
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_6
    iget v0, v8, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 340
    new-array v1, v4, [Landroid/media/AudioDeviceAttributes;

    .line 342
    aput-object v9, v1, v12

    .line 344
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v2, v0, v4, v1}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForStrategy(IZLjava/util/List;)I

    .line 351
    iget v0, v8, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    .line 353
    new-array v1, v4, [Landroid/media/AudioDeviceAttributes;

    .line 355
    aput-object v9, v1, v12

    .line 357
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 360
    move-result-object v1

    .line 361
    invoke-virtual {v2, v0, v4, v1}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForStrategy(IZLjava/util/List;)I

    .line 364
    :goto_2
    const/4 v6, 0x0

    .line 365
    const/16 v7, 0x1f4

    .line 367
    const/16 v2, 0xacb

    .line 369
    const/4 v3, 0x0

    .line 370
    const/4 v4, 0x0

    .line 371
    const/4 v5, 0x0

    .line 372
    move-object/from16 v1, p0

    .line 374
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 377
    :goto_3
    invoke-virtual {v8, v11}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    .line 380
    move-result v0

    .line 381
    iput-object v9, v8, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    .line 386
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MIC_MODE_FOR_QUICK_PANEL_UI:Z

    .line 388
    iget-object v2, v8, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 390
    if-eqz v1, :cond_8

    .line 392
    iget-object v1, v8, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    .line 394
    if-eqz v1, :cond_7

    .line 396
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 399
    move-result v1

    .line 400
    iget-object v3, v2, Lcom/android/server/audio/AudioService;->mMicModeManager:Lcom/samsung/android/server/audio/MicModeManager;

    .line 402
    iput v1, v3, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    .line 406
    const-string/jumbo v5, "setCommunicationDevice() deviceType: "

    .line 409
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    move-result-object v1

    .line 419
    const-string v4, "MicModeManager"

    .line 421
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v3}, Lcom/samsung/android/server/audio/MicModeManager;->updateAudioDevice()V

    .line 427
    goto :goto_4

    .line 428
    :cond_7
    iget-object v1, v8, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    .line 430
    if-eqz v1, :cond_8

    .line 432
    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 435
    move-result v1

    .line 436
    iget-object v3, v2, Lcom/android/server/audio/AudioService;->mMicModeManager:Lcom/samsung/android/server/audio/MicModeManager;

    .line 438
    iput v1, v3, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    .line 440
    new-instance v4, Ljava/lang/StringBuilder;

    .line 442
    const-string/jumbo v5, "setCommunicationDevice() deviceType: "

    .line 445
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    move-result-object v1

    .line 455
    const-string v4, "MicModeManager"

    .line 457
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {v3}, Lcom/samsung/android/server/audio/MicModeManager;->updateAudioDevice()V

    .line 463
    :cond_8
    :goto_4
    invoke-virtual {v8, v11}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    .line 466
    move-result v1

    .line 467
    if-eq v0, v1, :cond_b

    .line 469
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    .line 471
    const-string v1, "android.media.action.SPEAKERPHONE_STATE_CHANGED"

    .line 473
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    const/high16 v1, 0x40000000    # 2.0f

    .line 478
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 481
    move-result-object v0

    .line 482
    const-string/jumbo v1, "modeOwner"

    .line 485
    iget-object v3, v8, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 487
    iget v3, v3, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mPid:I

    .line 489
    if-nez v3, :cond_9

    .line 491
    iget-object v3, v8, Lcom/android/server/audio/AudioDeviceBroker;->mModeRequesterPackage:Ljava/lang/String;

    .line 493
    goto :goto_5

    .line 494
    :catch_0
    move-exception v0

    .line 495
    goto :goto_6

    .line 496
    :cond_9
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getAudioModeOwnerHandler()Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 499
    move-result-object v3

    .line 500
    if-eqz v3, :cond_a

    .line 502
    iget-object v3, v3, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackage:Ljava/lang/String;

    .line 504
    goto :goto_5

    .line 505
    :cond_a
    const-string v3, ""

    .line 507
    :goto_5
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    iget-object v1, v8, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 512
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 514
    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 517
    goto :goto_7

    .line 518
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 520
    const-string/jumbo v3, "failed to broadcast ACTION_SPEAKERPHONE_STATE_CHANGED: "

    .line 523
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    move-result-object v0

    .line 533
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_b
    :goto_7
    iget-object v13, v2, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 538
    const/16 v16, 0x0

    .line 540
    const/16 v17, 0x0

    .line 542
    const/16 v14, 0x19

    .line 544
    const/4 v15, 0x2

    .line 545
    const/16 v18, 0x0

    .line 547
    const/16 v19, 0x0

    .line 549
    invoke-static/range {v13 .. v19}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDeviceInt()Landroid/media/AudioDeviceInfo;

    .line 555
    move-result-object v0

    .line 556
    if-eqz v0, :cond_c

    .line 558
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getId()I

    .line 561
    move-result v0

    .line 562
    move v1, v0

    .line 563
    goto :goto_8

    .line 564
    :cond_c
    move v1, v12

    .line 565
    :goto_8
    iget v0, v8, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    .line 567
    if-ne v1, v0, :cond_d

    .line 569
    goto :goto_b

    .line 570
    :cond_d
    iput v1, v8, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    .line 572
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 574
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 577
    move-result v2

    .line 578
    :goto_9
    if-ge v12, v2, :cond_e

    .line 580
    :try_start_5
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 582
    invoke-virtual {v0, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 585
    move-result-object v0

    .line 586
    check-cast v0, Landroid/media/ICommunicationDeviceDispatcher;

    .line 588
    invoke-interface {v0, v1}, Landroid/media/ICommunicationDeviceDispatcher;->dispatchCommunicationDeviceChanged(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 591
    goto :goto_a

    .line 592
    :catch_1
    move-exception v0

    .line 593
    const-string/jumbo v3, "dispatchCommunicationDevice error"

    .line 596
    invoke-static {v10, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    :goto_a
    add-int/lit8 v12, v12, 0x1

    .line 601
    goto :goto_9

    .line 602
    :cond_e
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 604
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 607
    :goto_b
    return-void
.end method

.method public final updateCommunicationRouteClientState(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    .line 5
    move-result v0

    .line 6
    iget v1, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    .line 8
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 10
    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    .line 13
    move-result v1

    .line 14
    iput-boolean v1, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mPlaybackActive:Z

    .line 16
    iget v1, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    .line 18
    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 20
    invoke-virtual {v2, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->isRecordingActiveForUid(I)Z

    .line 23
    move-result v1

    .line 24
    iput-boolean v1, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mRecordingActive:Z

    .line 26
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    .line 29
    move-result p1

    .line 30
    if-eq p2, p1, :cond_0

    .line 32
    const/16 p1, 0x2b

    .line 34
    const-string/jumbo p2, "updateCommunicationRouteClientState"

    .line 37
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IILjava/lang/Object;)V

    .line 40
    :cond_0
    return-void
.end method

.method public final updateCommunicationRouteClientsActivity(Ljava/util/List;Ljava/util/List;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 9
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v2

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_9

    .line 19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 25
    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x1

    .line 31
    if-eqz p1, :cond_2

    .line 33
    iput-boolean v5, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mPlaybackActive:Z

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v7

    .line 39
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v8

    .line 43
    if-eqz v8, :cond_2

    .line 45
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v8

    .line 49
    check-cast v8, Landroid/media/AudioPlaybackConfiguration;

    .line 51
    invoke-virtual {v8}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 54
    move-result v9

    .line 55
    iget v10, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    .line 57
    if-ne v9, v10, :cond_1

    .line 59
    invoke-virtual {v8}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_1

    .line 65
    iput-boolean v6, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mPlaybackActive:Z

    .line 67
    move v7, v6

    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_3

    .line 71
    :cond_2
    move v7, v5

    .line 72
    :goto_1
    if-eqz p2, :cond_4

    .line 74
    iput-boolean v5, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mRecordingActive:Z

    .line 76
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object v8

    .line 80
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v9

    .line 84
    if-eqz v9, :cond_4

    .line 86
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v9

    .line 90
    check-cast v9, Landroid/media/AudioRecordingConfiguration;

    .line 92
    invoke-virtual {v9}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    .line 95
    move-result v10

    .line 96
    iget v11, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    .line 98
    if-ne v10, v11, :cond_3

    .line 100
    invoke-virtual {v9}, Landroid/media/AudioRecordingConfiguration;->isClientSilenced()Z

    .line 103
    move-result v9

    .line 104
    if-nez v9, :cond_3

    .line 106
    iput-boolean v6, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mRecordingActive:Z

    .line 108
    move v7, v6

    .line 109
    :cond_4
    if-eqz v7, :cond_6

    .line 111
    iget v5, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    .line 113
    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 116
    move-result-object v5

    .line 117
    if-eqz v5, :cond_5

    .line 119
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 121
    const/16 v7, 0x38

    .line 123
    invoke-virtual {v6, v7, v5}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 126
    :cond_5
    invoke-virtual {p0, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRouteClientState(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;Z)V

    .line 129
    goto :goto_0

    .line 130
    :cond_6
    if-eqz v4, :cond_0

    .line 132
    if-eqz p1, :cond_7

    .line 134
    move v4, v6

    .line 135
    goto :goto_2

    .line 136
    :cond_7
    move v4, v5

    .line 137
    :goto_2
    if-eqz p2, :cond_8

    .line 139
    move v5, v6

    .line 140
    :cond_8
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setForceCommunicationClientStateAndDelayedCheck(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;ZZ)V

    .line 143
    goto/16 :goto_0

    .line 145
    :cond_9
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    return-void

    .line 148
    :catchall_1
    move-exception p0

    .line 149
    goto :goto_4

    .line 150
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    :try_start_4
    throw p0

    .line 152
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 153
    throw p0
.end method

.method public final updateIndividualA2dpVolumes(I)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 3
    const-string/jumbo v0, "updateVolume:"

    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mVolumeLogger:Lcom/android/server/utils/EventLogger;

    .line 11
    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v0, ",main:"

    .line 23
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    .line 28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-direct {v3, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 41
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    .line 43
    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 47
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setVolume(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 52
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->updateMainVolume(I)V

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_3

    .line 58
    :cond_0
    :goto_0
    monitor-exit v1

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    .line 62
    sub-int/2addr p1, v0

    .line 63
    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    .line 66
    iget v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->MAX_VOLUME:I

    .line 68
    iput v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    .line 70
    const/4 v0, 0x0

    .line 71
    move v2, v0

    .line 72
    move v3, v2

    .line 73
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 75
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 78
    move-result v4

    .line 79
    if-ge v2, v4, :cond_5

    .line 81
    iget-object v4, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 83
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Ljava/lang/Integer;

    .line 89
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 92
    move-result v4

    .line 93
    iget v5, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->MAX_VOLUME:I

    .line 95
    if-ne v4, v5, :cond_2

    .line 97
    add-int/lit8 v3, v3, 0x1

    .line 99
    :cond_2
    add-int/2addr v4, p1

    .line 100
    iget-object v5, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 102
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 108
    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setVolume(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 111
    iget v5, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    .line 113
    if-ge v5, v4, :cond_3

    .line 115
    iput v4, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    .line 117
    :cond_3
    iget v5, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    .line 119
    if-le v5, v4, :cond_4

    .line 121
    iput v4, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    .line 123
    :cond_4
    iget v4, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    .line 125
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getValidIndex(I)I

    .line 128
    move-result v4

    .line 129
    iput v4, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    .line 131
    iget v4, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    .line 133
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getValidIndex(I)I

    .line 136
    move-result v4

    .line 137
    iput v4, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    .line 139
    add-int/lit8 v2, v2, 0x1

    .line 141
    goto :goto_1

    .line 142
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    .line 144
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 147
    move-result p1

    .line 148
    if-eq v3, p1, :cond_6

    .line 150
    const/4 v0, 0x1

    .line 151
    :cond_6
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->needVolumeChangedIntent:Z

    .line 153
    monitor-exit v1

    .line 154
    :goto_2
    return-void

    .line 155
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    throw p0
.end method

.method public final updateLeAudioVolume(I)V
    .locals 11

    .line 1
    const/high16 v0, -0x80000000

    .line 3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    .line 8
    move-result v0

    .line 9
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 11
    aget v8, v1, v0

    .line 13
    const-string/jumbo v1, "updateLeAudioVolume: device = "

    .line 16
    const-string/jumbo v2, "streamType = "

    .line 19
    const-string v3, ", streamAlias = "

    .line 21
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    const-string v9, "AS.AudioService"

    .line 34
    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 39
    aget-object v0, v0, v8

    .line 41
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 44
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 47
    aget-object v1, v1, v8

    .line 49
    iget v10, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 51
    const/4 v7, 0x1

    .line 52
    const/4 v6, 0x1

    .line 53
    const-string v2, "AS.AudioService"

    .line 55
    move-object v1, p0

    .line 56
    move v3, v8

    .line 57
    move v4, v0

    .line 58
    move v5, p1

    .line 59
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(Ljava/lang/String;IIIZZ)V

    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-virtual {p0, v9, v1}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(Ljava/lang/String;Z)V

    .line 66
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 71
    move-result v2

    .line 72
    move-object v1, p0

    .line 73
    move v3, p1

    .line 74
    move v4, v8

    .line 75
    move v5, v0

    .line 76
    move v6, v10

    .line 77
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setLeAudioVolumeOnModeUpdate(IIIII)V

    .line 80
    return-void
.end method
