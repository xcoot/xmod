.class public final Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;
.super Landroid/os/IServiceCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 3
    invoke-direct {p0}, Landroid/os/IServiceCallback$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onRegistration(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 7

    .line 1
    const-string v0, "BcRadioAidlSrv"

    .line 3
    const-string/jumbo v1, "onRegistration for %s"

    .line 6
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 9
    move-result-object v2

    .line 10
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 15
    iget-object v0, v0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 20
    iget-object v1, v1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mServiceNameToModuleIdMap:Ljava/util/Map;

    .line 22
    check-cast v1, Landroid/util/ArrayMap;

    .line 24
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Integer;

    .line 30
    const/4 v2, 0x1

    .line 31
    if-nez v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 35
    iget v1, v1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mNextModuleId:I

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v1

    .line 41
    move v3, v2

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto/16 :goto_2

    .line 46
    :cond_0
    const/4 v3, 0x0

    .line 47
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 50
    move-result v4

    .line 51
    invoke-static {v4, p2, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->tryLoadingModule(ILandroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 54
    move-result-object p2

    .line 55
    if-nez p2, :cond_1

    .line 57
    const-string p0, "BcRadioAidlSrv"

    .line 59
    const-string p2, "No module %s with id %d (HAL AIDL)"

    .line 61
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 65
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :cond_1
    sget-boolean v4, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->DEBUG:Z

    .line 72
    if-eqz v4, :cond_2

    .line 74
    const-string v4, "BcRadioAidlSrv"

    .line 76
    const-string v5, "Loaded broadcast radio module %s with id %d (HAL AIDL)"

    .line 78
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 81
    move-result-object v6

    .line 82
    invoke-static {v4, v5, v6}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_2
    iget-object v4, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 87
    iget-object v4, v4, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 92
    move-result v5

    .line 93
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 99
    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 101
    iget-object v5, v5, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    .line 103
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 106
    move-result v6

    .line 107
    invoke-virtual {v5, v6, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    if-eqz v4, :cond_3

    .line 112
    invoke-virtual {v4}, Lcom/android/server/broadcastradio/aidl/RadioModule;->closeSessions()V

    .line 115
    :cond_3
    if-eqz v3, :cond_4

    .line 117
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 119
    iget-object v3, v3, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mServiceNameToModuleIdMap:Ljava/util/Map;

    .line 121
    check-cast v3, Landroid/util/ArrayMap;

    .line 123
    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 128
    iget v3, p1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mNextModuleId:I

    .line 130
    add-int/2addr v3, v2

    .line 131
    iput v3, p1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mNextModuleId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_4
    :try_start_1
    new-instance p1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;

    .line 135
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 137
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 140
    move-result v3

    .line 141
    invoke-direct {p1, v2, v3}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;-><init>(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;I)V

    .line 144
    iget-object p2, p2, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 146
    check-cast p2, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 148
    iget-object p2, p2, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 150
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 153
    move-result v2

    .line 154
    invoke-interface {p2, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    goto :goto_1

    .line 158
    :catch_0
    :try_start_2
    const-string p1, "BcRadioAidlSrv"

    .line 160
    const-string p2, "Service has already died, so remove its entry from mModules."

    .line 162
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 167
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    .line 169
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 172
    move-result p1

    .line 173
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 176
    :goto_1
    monitor-exit v0

    .line 177
    return-void

    .line 178
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    throw p0
.end method
