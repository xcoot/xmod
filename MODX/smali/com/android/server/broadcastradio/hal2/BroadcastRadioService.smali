.class public final Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeathRecipient:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;

.field public final mLock:Ljava/lang/Object;

.field public final mModules:Ljava/util/Map;

.field public mNextModuleId:I

.field public final mServiceListener:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;

.field public final mServiceNameToModuleIdMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    const-string v0, "BcRadio2Srv"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 3
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceNameToModuleIdMap:Ljava/util/Map;

    .line 4
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    .line 5
    new-instance v1, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;

    invoke-direct {v1, p0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;-><init>(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V

    .line 6
    new-instance v2, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;

    invoke-direct {v2, p0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;-><init>(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V

    iput-object v2, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mDeathRecipient:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;

    .line 7
    iput p1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    .line 8
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object p0

    if-nez p0, :cond_0

    .line 9
    const-string/jumbo p0, "failed to get HIDL Service Manager"

    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    .line 10
    :cond_0
    const-string p1, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    const-string v2, ""

    invoke-interface {p0, p1, v2, v1}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 11
    :goto_0
    const-string/jumbo p1, "failed to register for service notifications: "

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public constructor <init>(ILandroid/hidl/manager/V1_0/IServiceManager;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 14
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceNameToModuleIdMap:Ljava/util/Map;

    .line 15
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    .line 16
    new-instance v0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;-><init>(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V

    .line 17
    new-instance v1, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;

    invoke-direct {v1, p0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;-><init>(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mDeathRecipient:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;

    .line 18
    iput p1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    .line 19
    const-string p0, "Service manager cannot be null"

    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    :try_start_0
    const-string p0, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    const-string p1, ""

    invoke-interface {p2, p0, p1, v0}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 21
    const-string p1, "BcRadio2Srv"

    const-string p2, "Failed to register for service notifications: "

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;
    .locals 5

    .line 1
    const-string v0, "BcRadio2Srv"

    .line 3
    const-string v1, "Add announcementListener"

    .line 5
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    .line 10
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 12
    invoke-direct {v0, p2, v1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;-><init>(Landroid/hardware/radio/IAnnouncementListener;Ljava/lang/Object;)V

    .line 15
    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter p2

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    .line 20
    check-cast p0, Landroid/util/ArrayMap;

    .line 22
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p0

    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/android/server/broadcastradio/hal2/RadioModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :try_start_1
    invoke-virtual {v0, v2, p1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->watchModule(Lcom/android/server/broadcastradio/hal2/RadioModule;[I)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    const/4 v1, 0x1

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception v2

    .line 51
    :try_start_2
    const-string v3, "BcRadio2Srv"

    .line 53
    const-string v4, "Announcements not supported for this module"

    .line 55
    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    if-nez v1, :cond_1

    .line 62
    const-string p0, "BcRadio2Srv"

    .line 64
    const-string p1, "There are no HAL modules that support announcements"

    .line 66
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_1
    return-object v0

    .line 70
    :goto_1
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    throw p0
.end method

.method public final openSession(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal2/TunerSession;
    .locals 3

    .line 1
    const-string v0, "BcRadio2Srv"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "Open HIDL 2.0 session with module id "

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_6

    .line 26
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    if-eqz p3, :cond_5

    .line 31
    iget-object p3, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 33
    monitor-enter p3

    .line 34
    :try_start_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object p1

    .line 40
    check-cast p0, Landroid/util/ArrayMap;

    .line 42
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 48
    if-eqz p0, :cond_4

    .line 50
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 53
    const-string p3, "Open TunerSession"

    .line 55
    const/4 v0, 0x0

    .line 56
    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    invoke-virtual {p1, p3, v0}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    .line 63
    monitor-enter p1

    .line 64
    :try_start_1
    iget-object p3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 66
    if-nez p3, :cond_0

    .line 68
    new-instance p3, Lcom/android/server/broadcastradio/hal2/Mutable;

    .line 70
    invoke-direct {p3}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 73
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    .line 75
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerCallback:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    .line 77
    new-instance v2, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda0;

    .line 79
    invoke-direct {v2, p0, p3}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/Mutable;)V

    .line 82
    check-cast v0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;->openSession(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda0;)V

    .line 87
    iget-object p3, p3, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 89
    check-cast p3, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 91
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iput-object p3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_1

    .line 99
    :cond_0
    :goto_0
    new-instance p3, Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 101
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 103
    invoke-direct {p3, p0, v0, p4}, Lcom/android/server/broadcastradio/hal2/TunerSession;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;Landroid/hardware/radio/ITunerCallback;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    .line 108
    check-cast v0, Landroid/util/ArraySet;

    .line 110
    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    .line 115
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 120
    move-result v0

    .line 121
    invoke-interface {p4, v0}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    .line 124
    :cond_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 126
    if-eqz p0, :cond_2

    .line 128
    invoke-interface {p4, p0}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 131
    :cond_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    if-eqz p2, :cond_3

    .line 134
    invoke-virtual {p3, p2}, Lcom/android/server/broadcastradio/hal2/TunerSession;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 137
    :cond_3
    return-object p3

    .line 138
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    throw p0

    .line 140
    :catchall_1
    move-exception p0

    .line 141
    goto :goto_2

    .line 142
    :cond_4
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 144
    const-string p1, "Invalid module ID"

    .line 146
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 149
    throw p0

    .line 150
    :goto_2
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    throw p0

    .line 152
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 154
    const-string p1, "Non-audio sessions not supported with HAL 2.0"

    .line 156
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 159
    throw p0

    .line 160
    :cond_6
    const-string p0, "BcRadio2Srv"

    .line 162
    const-string p1, "Cannot open tuner on HAL 2.0 client for non-current user"

    .line 164
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 169
    const-string p1, "Cannot open session for non-current user"

    .line 171
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 174
    throw p0
.end method
