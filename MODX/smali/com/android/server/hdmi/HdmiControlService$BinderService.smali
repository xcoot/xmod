.class public final Lcom/android/server/hdmi/HdmiControlService$BinderService;
.super Landroid/hardware/hdmi/IHdmiControlService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final addCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    .line 13
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    .line 21
    new-instance v2, Landroid/os/RemoteCallbackList;

    .line 23
    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 26
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 31
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingChangeListener:Lcom/android/server/hdmi/HdmiControlService$2;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 38
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiControlService$2;Ljava/util/concurrent/Executor;)V

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    .line 46
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Landroid/os/RemoteCallbackList;

    .line 52
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 55
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method public final addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;

    .line 13
    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    .line 16
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiDeviceEventListener;->asBinder()Landroid/os/IBinder;

    .line 19
    move-result-object p1

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 26
    monitor-enter p1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    monitor-exit p1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p0

    .line 37
    :catch_0
    const-string p0, "HdmiControlService"

    .line 39
    const-string p1, "Listener already died"

    .line 41
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    return-void
.end method

.method public final addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    .line 11
    return-void
.end method

.method public final addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    .line 11
    return-void
.end method

.method public final addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 16
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;->asBinder()Landroid/os/IBinder;

    .line 19
    move-result-object p1

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 26
    monitor-enter p1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    monitor-exit p1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p0

    .line 37
    :catch_0
    const-string p0, "HdmiControlService"

    .line 39
    const-string p1, "Listener already died."

    .line 41
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    return-void
.end method

.method public final addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 13
    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 16
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 26
    monitor-enter v1

    .line 27
    :try_start_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$23;

    .line 35
    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService$23;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    throw p0

    .line 45
    :catch_0
    const-string p0, "HdmiControlService"

    .line 47
    const-string p1, "Listener already died"

    .line 49
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    return-void
.end method

.method public final addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    .line 13
    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 16
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    .line 19
    move-result-object p1

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 26
    monitor-enter p1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    monitor-exit p1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p0

    .line 37
    :catch_0
    const-string p0, "HdmiControlService"

    .line 39
    const-string p1, "Listener already died"

    .line 41
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    return-void
.end method

.method public final addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    .line 11
    return-void
.end method

.method public final askRemoteDeviceToBecomeActiveSource(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method

.method public final canChangeSystemAudioMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 15
    return v0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 18
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 20
    const/4 v1, 0x5

    .line 21
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_1

    .line 27
    const/4 v0, 0x1

    .line 28
    :cond_1
    return v0
.end method

.method public final clearTimerRecording(II[B)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v7, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;

    .line 10
    const/4 v4, 0x1

    .line 11
    move-object v1, v7

    .line 12
    move v2, p1

    .line 13
    move v3, p2

    .line 14
    move-object v5, p0

    .line 15
    move-object v6, p3

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;-><init>(IIILcom/android/server/hdmi/HdmiControlService$BinderService;[B)V

    .line 19
    invoke-virtual {v0, v7}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 22
    return-void
.end method

.method public final deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p0, p2, p1, v2}, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;II)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string/jumbo p1, "mProhibitMode: "

    .line 4
    iget-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p3

    .line 10
    const-string v0, "HdmiControlService"

    .line 12
    invoke-static {p3, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 15
    move-result p3

    .line 16
    if-nez p3, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p3, Lcom/android/internal/util/IndentingPrintWriter;

    .line 21
    const-string v0, "  "

    .line 23
    invoke-direct {p3, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 28
    iget-object p2, p2, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 30
    monitor-enter p2

    .line 31
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 38
    iget-boolean p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 50
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    const-string/jumbo p2, "mPowerStatus: "

    .line 56
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 61
    iget-object p2, p2, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 63
    iget p2, p2, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo p2, "mIsCecAvailable: "

    .line 80
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 85
    iget-boolean p2, p2, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    .line 87
    const-string/jumbo v0, "mCecVersion: "

    .line 90
    invoke-static {p1, p2, p3, v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    move-result-object p1

    .line 94
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 96
    iget p2, p2, Lcom/android/server/hdmi/HdmiControlService;->mCecVersion:I

    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo p2, "mIsAbsoluteVolumeBehaviorEnabled: "

    .line 113
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 118
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->isAbsoluteVolumeBehaviorEnabled()Z

    .line 121
    move-result p2

    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 132
    const-string p1, "System_settings:"

    .line 134
    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    .line 142
    const-string/jumbo p2, "mMhlInputChangeEnabled: "

    .line 145
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 150
    iget-object v0, p2, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 152
    monitor-enter v0

    .line 153
    :try_start_1
    iget-boolean p2, p2, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    .line 155
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    const-string/jumbo v0, "mSystemAudioActivated: "

    .line 159
    invoke-static {p1, p2, p3, v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    move-result-object p1

    .line 163
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 165
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 168
    move-result p2

    .line 169
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    .line 181
    const-string/jumbo p2, "mHdmiCecVolumeControlEnabled: "

    .line 184
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 189
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    .line 192
    move-result p2

    .line 193
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 206
    const-string p1, "CEC settings:"

    .line 208
    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 214
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 216
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    new-instance p2, Ljava/util/ArrayList;

    .line 225
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    .line 227
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 230
    move-result-object v0

    .line 231
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 234
    new-instance v0, Ljava/util/HashSet;

    .line 236
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getUserSettings()Ljava/util/List;

    .line 239
    move-result-object v1

    .line 240
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 243
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 246
    move-result-object p2

    .line 247
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    move-result v1

    .line 251
    if-eqz v1, :cond_b

    .line 253
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    move-result-object v1

    .line 257
    check-cast v1, Ljava/lang/String;

    .line 259
    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 262
    move-result-object v2

    .line 263
    if-eqz v2, :cond_a

    .line 265
    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    .line 272
    move-result-object v2

    .line 273
    const-string/jumbo v3, "string"

    .line 276
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    move-result v2

    .line 280
    if-eqz v2, :cond_5

    .line 282
    const-string v2, " (string): "

    .line 284
    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    move-result-object v3

    .line 292
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v3, " (default: "

    .line 297
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 303
    move-result-object v3

    .line 304
    const-string v4, "Setting \'"

    .line 306
    if-eqz v3, :cond_4

    .line 308
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    .line 311
    move-result-object v3

    .line 312
    const-string/jumbo v5, "string"

    .line 315
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    move-result v3

    .line 319
    if-eqz v3, :cond_3

    .line 321
    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 324
    move-result-object v3

    .line 325
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 328
    move-result-object v3

    .line 329
    iget-object v3, v3, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mStringValue:Ljava/lang/String;

    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v3, ")"

    .line 336
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 342
    move-result v1

    .line 343
    if-eqz v1, :cond_2

    .line 345
    const-string v1, " [modifiable]"

    .line 347
    goto :goto_1

    .line 348
    :cond_2
    const-string v1, ""

    .line 350
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {p3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 360
    goto :goto_0

    .line 361
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 363
    const-string p1, "\' is not a string-type setting."

    .line 365
    invoke-static {v4, v1, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 368
    move-result-object p1

    .line 369
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 372
    throw p0

    .line 373
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 375
    const-string p1, "\' does not exist."

    .line 377
    invoke-static {v4, v1, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    move-result-object p1

    .line 381
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 384
    throw p0

    .line 385
    :cond_5
    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 388
    move-result-object v2

    .line 389
    if-eqz v2, :cond_9

    .line 391
    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 394
    move-result-object v2

    .line 395
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    .line 398
    move-result-object v2

    .line 399
    const-string/jumbo v3, "int"

    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    move-result v2

    .line 406
    if-eqz v2, :cond_1

    .line 408
    const-string v2, " (int): "

    .line 410
    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    move-result-object v2

    .line 414
    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 417
    move-result v3

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    const-string v3, " (default: "

    .line 423
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 429
    move-result-object v3

    .line 430
    const-string v4, "Setting \'"

    .line 432
    if-eqz v3, :cond_8

    .line 434
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    .line 437
    move-result-object v3

    .line 438
    const-string/jumbo v5, "int"

    .line 441
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    move-result v3

    .line 445
    if-eqz v3, :cond_7

    .line 447
    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 450
    move-result-object v3

    .line 451
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 454
    move-result-object v3

    .line 455
    iget-object v3, v3, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mIntValue:Ljava/lang/Integer;

    .line 457
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 460
    move-result v3

    .line 461
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    const-string v3, ")"

    .line 466
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 472
    move-result v1

    .line 473
    if-eqz v1, :cond_6

    .line 475
    const-string v1, " [modifiable]"

    .line 477
    goto :goto_2

    .line 478
    :cond_6
    const-string v1, ""

    .line 480
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    move-result-object v1

    .line 487
    invoke-virtual {p3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 490
    goto/16 :goto_0

    .line 492
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 494
    const-string p1, "\' is not a string-type setting."

    .line 496
    invoke-static {v4, v1, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 499
    move-result-object p1

    .line 500
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 503
    throw p0

    .line 504
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 506
    const-string p1, "\' does not exist."

    .line 508
    invoke-static {v4, v1, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 511
    move-result-object p1

    .line 512
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 515
    throw p0

    .line 516
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 518
    const-string p1, "Setting \'"

    .line 520
    const-string p2, "\' does not exist."

    .line 522
    invoke-static {p1, v1, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 525
    move-result-object p1

    .line 526
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 529
    throw p0

    .line 530
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 532
    const-string p1, "Setting \'"

    .line 534
    const-string p2, "\' does not exist."

    .line 536
    invoke-static {p1, v1, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 539
    move-result-object p1

    .line 540
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 543
    throw p0

    .line 544
    :cond_b
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 547
    const-string/jumbo p1, "mMhlController: "

    .line 550
    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 556
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 558
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 560
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 566
    const-string/jumbo p1, "eARC local device: "

    .line 569
    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 575
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 577
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 579
    if-nez p1, :cond_c

    .line 581
    const-string p1, "None. eARC is either disabled or not available."

    .line 583
    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 586
    goto :goto_3

    .line 587
    :cond_c
    check-cast p1, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;

    .line 589
    const-string p2, "TX, mEarcStatus: "

    .line 591
    iget-object v1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 593
    monitor-enter v1

    .line 594
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 596
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    iget p1, p1, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    .line 601
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 607
    move-result-object p1

    .line 608
    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 611
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 612
    :goto_3
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 615
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 617
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 619
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 622
    const-string p2, "HDMI CEC Network"

    .line 624
    invoke-virtual {p3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 630
    const-string/jumbo p2, "mPortInfo:"

    .line 633
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfo:Ljava/util/List;

    .line 635
    sget-object v1, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:Ljava/util/Map;

    .line 637
    invoke-virtual {p3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 643
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 646
    move-result-object p2

    .line 647
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 650
    move-result v0

    .line 651
    if-eqz v0, :cond_d

    .line 653
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 656
    move-result-object v0

    .line 657
    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 660
    goto :goto_4

    .line 661
    :cond_d
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 664
    const/4 p2, 0x0

    .line 665
    :goto_5
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 667
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 670
    move-result v0

    .line 671
    if-ge p2, v0, :cond_f

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    .line 675
    const-string v1, "HdmiCecLocalDevice #"

    .line 677
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 680
    iget-object v1, p1, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 682
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 685
    move-result v1

    .line 686
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 689
    const-string v1, ":"

    .line 691
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 697
    move-result-object v0

    .line 698
    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 704
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 706
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 709
    move-result-object v0

    .line 710
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 712
    invoke-virtual {v0, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 715
    const-string v0, "Active Source history:"

    .line 717
    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 723
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 725
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 728
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 731
    iget-object v1, p1, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 733
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 736
    move-result-object v1

    .line 737
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 739
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSourceHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 741
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    .line 744
    move-result-object v1

    .line 745
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 748
    move-result v2

    .line 749
    if-eqz v2, :cond_e

    .line 751
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 754
    move-result-object v2

    .line 755
    check-cast v2, Lcom/android/server/hdmi/HdmiCecController$Dumpable;

    .line 757
    invoke-virtual {v2, p3, v0}, Lcom/android/server/hdmi/HdmiCecController$Dumpable;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 760
    goto :goto_6

    .line 761
    :cond_e
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 764
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 767
    add-int/lit8 p2, p2, 0x1

    .line 769
    goto :goto_5

    .line 770
    :cond_f
    const-string/jumbo p2, "mDeviceInfos:"

    .line 773
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 775
    invoke-virtual {p3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 781
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 784
    move-result-object p1

    .line 785
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 788
    move-result p2

    .line 789
    if-eqz p2, :cond_10

    .line 791
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 794
    move-result-object p2

    .line 795
    invoke-virtual {p3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 798
    goto :goto_7

    .line 799
    :cond_10
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 802
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 805
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 807
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 809
    if-eqz p1, :cond_12

    .line 811
    const-string/jumbo p1, "mCecController: "

    .line 814
    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 820
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 822
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 824
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 827
    const-string p1, "CEC message history:"

    .line 829
    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 835
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 837
    const-string/jumbo p2, "yyyy-MM-dd HH:mm:ss"

    .line 840
    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 843
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 845
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    .line 848
    move-result-object p0

    .line 849
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 852
    move-result p2

    .line 853
    if-eqz p2, :cond_11

    .line 855
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 858
    move-result-object p2

    .line 859
    check-cast p2, Lcom/android/server/hdmi/HdmiCecController$Dumpable;

    .line 861
    invoke-virtual {p2, p3, p1}, Lcom/android/server/hdmi/HdmiCecController$Dumpable;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 864
    goto :goto_8

    .line 865
    :cond_11
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 868
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 871
    :cond_12
    return-void

    .line 872
    :catchall_0
    move-exception p0

    .line 873
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 874
    throw p0

    .line 875
    :catchall_1
    move-exception p0

    .line 876
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 877
    throw p0

    .line 878
    :catchall_2
    move-exception p0

    .line 879
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 880
    throw p0
.end method

.method public final getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 31
    move-result-object p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 36
    move-result-object v0

    .line 37
    iget v1, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 39
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 45
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 47
    iget v2, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 49
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_2

    .line 55
    :cond_1
    :goto_0
    move-object p0, v1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 59
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 64
    move-result p0

    .line 65
    invoke-static {v0, p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->hardwarePort(II)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 68
    move-result-object p0

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 73
    move-result-object v0

    .line 74
    const/4 v1, 0x0

    .line 75
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    .line 84
    move-result v0

    .line 85
    const v2, 0xffff

    .line 88
    if-eq v0, v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 92
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 94
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 97
    move-result-object v2

    .line 98
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_5

    .line 104
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 110
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 113
    move-result v4

    .line 114
    if-ne v4, v0, :cond_4

    .line 116
    move-object v1, v3

    .line 117
    :cond_5
    if-eqz v1, :cond_6

    .line 119
    goto :goto_0

    .line 120
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    .line 127
    move-result p0

    .line 128
    invoke-static {v0, p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->hardwarePort(II)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 131
    move-result-object p0

    .line 132
    :goto_1
    return-object p0
.end method

.method public final getAllowedCecSettingIntValues(Ljava/lang/String;)[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllowedIntValues(Ljava/lang/String;)Ljava/util/List;

    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 23
    move-result-object p0

    .line 24
    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$BinderService$$ExternalSyntheticLambda0;

    .line 26
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    .line 36
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    return-object p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    throw p0
.end method

.method public final getAllowedCecSettingStringValues(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllowedStringValues(Ljava/lang/String;)Ljava/util/List;

    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    throw p0
.end method

.method public final getCecSettingIntValue(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    throw p0
.end method

.method public final getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    throw p0
.end method

.method public final getDeviceList()Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 36
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 39
    move-result v3

    .line 40
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecNetwork;->isLocalDeviceAddress(I)Z

    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object v0
.end method

.method public final getInputDevices()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 10
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeExternalInputs:Ljava/util/List;

    .line 12
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    .line 14
    sget-object v1, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:Ljava/util/Map;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 31
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 39
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 42
    move-result-object p0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 50
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 53
    move-result-object p0

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 63
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 69
    move-result-object p0

    .line 70
    :goto_0
    return-object p0
.end method

.method public final getMessageHistorySize()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistoryLock:Ljava/lang/Object;

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    .line 20
    move-result v1

    .line 21
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 23
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->remainingCapacity()I

    .line 26
    move-result p0

    .line 27
    add-int/2addr v1, p0

    .line 28
    monitor-exit v0

    .line 29
    return v1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final getPhysicalAddress()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 13
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 15
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 18
    move-result p0

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final getPortInfo()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 21
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    .line 24
    move-result-object p0

    .line 25
    :goto_0
    return-object p0
.end method

.method public final getSupportedTypes()[I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mCecLocalDevices:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    move-result v0

    .line 14
    new-array v1, v0, [I

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v0, :cond_0

    .line 19
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 21
    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService;->mCecLocalDevices:Ljava/util/List;

    .line 23
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/Integer;

    .line 29
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v3

    .line 33
    aput v3, v1, v2

    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v1
.end method

.method public final getSystemAudioMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 11
    move-result-object v0

    .line 12
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 17
    move-result-object p0

    .line 18
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 26
    :cond_0
    if-eqz p0, :cond_2

    .line 28
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 30
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_2

    .line 36
    :cond_1
    const/4 p0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 p0, 0x0

    .line 39
    :goto_0
    return p0
.end method

.method public final getUserCecSettings()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig;->getUserSettings()Ljava/util/List;

    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    new-instance v1, Lcom/android/server/hdmi/HdmiControlShellCommand;

    .line 8
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;-><init>(Landroid/hardware/hdmi/IHdmiControlService$Stub;)V

    .line 11
    move-object v2, p0

    .line 12
    move-object v3, p1

    .line 13
    move-object v4, p2

    .line 14
    move-object v5, p3

    .line 15
    move-object v6, p4

    .line 16
    move-object v7, p5

    .line 17
    move-object v8, p6

    .line 18
    invoke-virtual/range {v1 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 21
    return-void
.end method

.method public final oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    move-result v0

    .line 10
    const-string v1, "Process pid: "

    .line 12
    const-string v2, " is calling oneTouchPlay."

    .line 14
    const-string v3, "HdmiControlService"

    .line 16
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 21
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$24;

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService$24;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 30
    return-void
.end method

.method public final portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, p0, p2, p1, v2}, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;II)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method

.method public final powerOffRemoteDevice(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method

.method public final powerOnRemoteDevice(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method

.method public final queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$24;

    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService$24;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method

.method public final removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    .line 13
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 19
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    .line 25
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 31
    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 34
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    .line 36
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Landroid/os/RemoteCallbackList;

    .line 42
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_1

    .line 48
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    .line 50
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 55
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingChangeListener:Lcom/android/server/hdmi/HdmiControlService$2;

    .line 57
    invoke-virtual {p2, p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->removeChangeListener(Lcom/android/server/hdmi/HdmiControlService$2;Ljava/lang/String;)V

    .line 60
    :cond_1
    monitor-exit v0

    .line 61
    :goto_0
    return-void

    .line 62
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public final removeHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->removeHdmiControlVolumeControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    .line 11
    return-void
.end method

.method public final removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v1

    .line 17
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    .line 29
    iget-object v3, v2, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    .line 31
    invoke-interface {v3}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;->asBinder()Landroid/os/IBinder;

    .line 34
    move-result-object v3

    .line 35
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;->asBinder()Landroid/os/IBinder;

    .line 38
    move-result-object v4

    .line 39
    if-ne v3, v4, :cond_0

    .line 41
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;->asBinder()Landroid/os/IBinder;

    .line 44
    move-result-object p1

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 49
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method public final removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v1

    .line 17
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 29
    iget-object v3, v2, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .line 31
    invoke-interface {v3}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    .line 34
    move-result-object v3

    .line 35
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    .line 38
    move-result-object v4

    .line 39
    if-ne v3, v4, :cond_0

    .line 41
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    .line 44
    move-result-object p1

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 49
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method public final removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v1

    .line 17
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    .line 29
    iget-object v3, v2, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .line 31
    invoke-interface {v3}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    .line 34
    move-result-object v3

    .line 35
    if-ne v3, p1, :cond_0

    .line 37
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    .line 40
    move-result-object p1

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 45
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method public final reportAudioStatus(IIIZ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance p3, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;

    .line 10
    const/4 p4, 0x3

    .line 11
    invoke-direct {p3, p0, p1, p4}, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II)V

    .line 14
    invoke-virtual {p2, p3}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method

.method public final sendKeyEvent(IIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;

    .line 10
    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public final sendMhlVendorCommand(III[B)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v7, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;

    .line 10
    move-object v1, v7

    .line 11
    move v2, p1

    .line 12
    move v3, p2

    .line 13
    move v4, p3

    .line 14
    move-object v5, p0

    .line 15
    move-object v6, p4

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;-><init>(IIILcom/android/server/hdmi/HdmiControlService$BinderService;[B)V

    .line 19
    invoke-virtual {v0, v7}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 22
    return-void
.end method

.method public final sendStandby(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;

    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-direct {v1, p0, p2, p1, v2}, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method

.method public final sendVendorCommand(II[BZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v7, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;

    .line 10
    move-object v1, v7

    .line 11
    move-object v2, p0

    .line 12
    move v3, p1

    .line 13
    move v4, p4

    .line 14
    move v5, p2

    .line 15
    move-object v6, p3

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI[B)V

    .line 19
    invoke-virtual {v0, v7}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 22
    return-void
.end method

.method public final sendVolumeKeyEvent(IIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;

    .line 10
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IIZ)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public final setArcMode(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;ZI)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method

.method public final setCecSettingIntValue(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->setIntValue(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    throw p0
.end method

.method public final setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    throw p0
.end method

.method public final setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    .line 13
    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V

    .line 16
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiRecordListener;->asBinder()Landroid/os/IBinder;

    .line 21
    move-result-object p1

    .line 22
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception p0

    .line 32
    :try_start_2
    const-string p1, "HdmiControlService"

    .line 34
    const-string v1, "Listener already died."

    .line 36
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :goto_0
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    throw p0
.end method

.method public final setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    .line 13
    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    .line 16
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener;->asBinder()Landroid/os/IBinder;

    .line 21
    move-result-object p1

    .line 22
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    monitor-exit v0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    const-string p0, "HdmiControlService"

    .line 34
    const-string p1, "Listener already died"

    .line 36
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    monitor-exit v0

    .line 40
    :goto_0
    return-void

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    throw p0
.end method

.method public final setMessageHistorySize(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 13
    return v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    const/16 v1, 0xfa

    .line 19
    if-ge p1, v1, :cond_1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 24
    invoke-direct {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 27
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistoryLock:Ljava/lang/Object;

    .line 29
    monitor-enter v2

    .line 30
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 32
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    .line 35
    move-result v3

    .line 36
    if-ge p1, v3, :cond_2

    .line 38
    :goto_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 40
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    .line 43
    move-result v3

    .line 44
    sub-int/2addr v3, p1

    .line 45
    if-ge v0, v3, :cond_2

    .line 47
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 49
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 59
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 62
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 64
    monitor-exit v2

    .line 65
    const/4 v0, 0x1

    .line 66
    :goto_1
    return v0

    .line 67
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method public final setProhibitMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 17
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final setStandbyMode(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;

    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;ZI)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method

.method public final setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;

    .line 10
    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;Z)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public final setSystemAudioModeOnForAudioOnlySource()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$31$1;

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2, p0}, Lcom/android/server/hdmi/HdmiControlService$31$1;-><init>(ILjava/lang/Object;)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method

.method public final setSystemAudioMute(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;ZI)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method

.method public final setSystemAudioVolume(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;

    .line 10
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public final shouldHandleTvPowerKey()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->shouldHandleTvPowerKey()Z

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final startOneTouchRecord(I[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;

    .line 10
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;I[B)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public final startTimerRecording(II[B)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v7, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;

    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v1, v7

    .line 12
    move v2, p1

    .line 13
    move v3, p2

    .line 14
    move-object v5, p0

    .line 15
    move-object v6, p3

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;-><init>(IIILcom/android/server/hdmi/HdmiControlService$BinderService;[B)V

    .line 19
    invoke-virtual {v0, v7}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 22
    return-void
.end method

.method public final stopOneTouchRecord(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method

.method public final toggleAndFollowTvPower()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    move-result v0

    .line 10
    const-string v1, "Process pid: "

    .line 12
    const-string v2, " is calling toggleAndFollowTvPower."

    .line 14
    const-string v3, "HdmiControlService"

    .line 16
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 21
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$31$1;

    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-direct {v1, v2, p0}, Lcom/android/server/hdmi/HdmiControlService$31$1;-><init>(ILjava/lang/Object;)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 30
    return-void
.end method
