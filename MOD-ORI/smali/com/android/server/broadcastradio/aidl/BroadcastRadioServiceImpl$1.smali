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

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IServiceCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRegistration(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 7

    .line 1
    const-string v0, "BcRadioAidlSrv"

    .line 2
    .line 3
    const-string/jumbo v1, "onRegistration for %s"

    .line 4
    .line 5
    .line 6
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mServiceNameToModuleIdMap:Ljava/util/Map;

    .line 21
    .line 22
    check-cast v1, Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Integer;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 34
    .line 35
    iget v1, v1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mNextModuleId:I

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
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

    .line 45
    .line 46
    :cond_0
    const/4 v3, 0x0

    .line 47
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-static {v4, p2, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->tryLoadingModule(ILandroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    if-nez p2, :cond_1

    .line 56
    .line 57
    const-string p0, "BcRadioAidlSrv"

    .line 58
    .line 59
    const-string p2, "No module %s with id %d (HAL AIDL)"

    .line 60
    .line 61
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :cond_1
    sget-boolean v4, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->DEBUG:Z

    .line 71
    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    const-string v4, "BcRadioAidlSrv"

    .line 75
    .line 76
    const-string v5, "Loaded broadcast radio module %s with id %d (HAL AIDL)"

    .line 77
    .line 78
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-static {v4, v5, v6}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-object v4, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 86
    .line 87
    iget-object v4, v4, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 98
    .line 99
    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 100
    .line 101
    iget-object v5, v5, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    invoke-virtual {v5, v6, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    if-eqz v4, :cond_3

    .line 111
    .line 112
    invoke-virtual {v4}, Lcom/android/server/broadcastradio/aidl/RadioModule;->closeSessions()V

    .line 113
    .line 114
    .line 115
    :cond_3
    if-eqz v3, :cond_4

    .line 116
    .line 117
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 118
    .line 119
    iget-object v3, v3, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mServiceNameToModuleIdMap:Ljava/util/Map;

    .line 120
    .line 121
    check-cast v3, Landroid/util/ArrayMap;

    .line 122
    .line 123
    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 127
    .line 128
    iget v3, p1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mNextModuleId:I

    .line 129
    .line 130
    add-int/2addr v3, v2

    .line 131
    iput v3, p1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mNextModuleId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .line 133
    :cond_4
    :try_start_1
    new-instance p1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;

    .line 134
    .line 135
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    invoke-direct {p1, v2, v3}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;-><init>(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;I)V

    .line 142
    .line 143
    .line 144
    iget-object p2, p2, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 145
    .line 146
    check-cast p2, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 147
    .line 148
    iget-object p2, p2, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    invoke-interface {p2, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :catch_0
    :try_start_2
    const-string p1, "BcRadioAidlSrv"

    .line 159
    .line 160
    const-string p2, "Service has already died, so remove its entry from mModules."

    .line 161
    .line 162
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 166
    .line 167
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 174
    .line 175
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
