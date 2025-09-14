.class public final synthetic Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$2:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$2:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/os/PersistableBundle;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroid/os/SharedMemory;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$2:Landroid/os/RemoteCallback;

    .line 15
    .line 16
    check-cast p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvidedData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Landroid/app/wearable/IWearableSensingCallback;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$2:Landroid/os/RemoteCallback;

    .line 31
    .line 32
    check-cast p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Landroid/app/wearable/IWearableSensingCallback;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;->f$2:Landroid/os/RemoteCallback;

    .line 47
    .line 48
    check-cast p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string v2, "WearableSensingManagerPerUserService"

    .line 54
    .line 55
    const-string/jumbo v3, "onProvideConnection in per user service."

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-object v2, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 62
    .line 63
    monitor-enter v2

    .line 64
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_0

    .line 69
    .line 70
    const-string p1, "WearableSensingManagerPerUserService"

    .line 71
    .line 72
    const-string v0, "Detection service is not available at this moment."

    .line 73
    .line 74
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    const/4 p1, 0x3

    .line 78
    invoke-static {p1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 79
    .line 80
    .line 81
    monitor-exit v2

    .line 82
    goto :goto_2

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_4

    .line 85
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->wrapWearableSensingCallback(Landroid/app/wearable/IWearableSensingCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object v3, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    .line 91
    .line 92
    monitor-enter v3

    .line 93
    :try_start_1
    iget-object v2, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 94
    .line 95
    if-eqz v2, :cond_1

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_1
    move-exception p0

    .line 102
    goto :goto_3

    .line 103
    :cond_1
    :goto_0
    :try_start_2
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 104
    .line 105
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 106
    .line 107
    .line 108
    iget-object v4, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    const-class v5, Landroid/companion/CompanionDeviceManager;

    .line 115
    .line 116
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Landroid/companion/CompanionDeviceManager;

    .line 121
    .line 122
    new-instance v5, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;

    .line 123
    .line 124
    invoke-direct {v5, p1, v1, p0, v2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;Landroid/os/RemoteCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v4, v0, v5}, Lcom/android/server/wearable/WearableSensingSecureChannel;->create(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;)Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iput-object v0, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 132
    .line 133
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catch_0
    move-exception p1

    .line 138
    :try_start_3
    const-string v0, "WearableSensingManagerPerUserService"

    .line 139
    .line 140
    const-string v1, "Unable to create the secure channel."

    .line 141
    .line 142
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .line 144
    .line 145
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/Flags;->enableProvideWearableConnectionApi()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_2

    .line 150
    .line 151
    const/4 p1, 0x7

    .line 152
    invoke-static {p1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 153
    .line 154
    .line 155
    :cond_2
    :goto_1
    monitor-exit v3

    .line 156
    :goto_2
    return-void

    .line 157
    :goto_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 158
    throw p0

    .line 159
    :goto_4
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    throw p0

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
