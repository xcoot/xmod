.class public final Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 3
    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 1
    const-string/jumbo v0, "loaded broadcast radio module "

    .line 4
    const-string v1, "BcRadio2Srv"

    .line 6
    const-string/jumbo v2, "onRegistration("

    .line 9
    const-string v3, ", "

    .line 11
    const-string v4, ", "

    .line 13
    invoke-static {v2, p1, v3, p2, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    const-string p3, ")"

    .line 22
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    invoke-static {v1, p1}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 34
    iget-object p1, p1, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 36
    monitor-enter p1

    .line 37
    :try_start_0
    iget-object p3, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 39
    iget-object p3, p3, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceNameToModuleIdMap:Ljava/util/Map;

    .line 41
    check-cast p3, Landroid/util/ArrayMap;

    .line 43
    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object p3

    .line 47
    check-cast p3, Ljava/lang/Integer;

    .line 49
    const/4 v1, 0x1

    .line 50
    if-nez p3, :cond_0

    .line 52
    iget-object p3, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 54
    iget p3, p3, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    .line 56
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p3

    .line 60
    move v2, v1

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_2

    .line 64
    :cond_0
    const/4 v2, 0x0

    .line 65
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 68
    move-result v3

    .line 69
    invoke-static {v3, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->tryLoadingModule(ILjava/lang/String;)Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 72
    move-result-object v3

    .line 73
    if-nez v3, :cond_1

    .line 75
    monitor-exit p1

    .line 76
    return-void

    .line 77
    :cond_1
    const-string v4, "BcRadio2Srv"

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const-string v0, ": "

    .line 89
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v0, " (HAL 2.0)"

    .line 97
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    invoke-static {v4, v0}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 109
    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    .line 111
    check-cast v0, Landroid/util/ArrayMap;

    .line 113
    invoke-virtual {v0, p3, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 119
    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->closeSessions()V

    .line 124
    :cond_2
    if-eqz v2, :cond_3

    .line 126
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 128
    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceNameToModuleIdMap:Ljava/util/Map;

    .line 130
    check-cast v0, Landroid/util/ArrayMap;

    .line 132
    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 137
    iget v0, p2, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    .line 139
    add-int/2addr v0, v1

    .line 140
    iput v0, p2, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_3
    :try_start_1
    iget-object p2, v3, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    .line 144
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 146
    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mDeathRecipient:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;

    .line 148
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 151
    move-result v1

    .line 152
    int-to-long v1, v1

    .line 153
    check-cast p2, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;

    .line 155
    invoke-virtual {p2, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    goto :goto_1

    .line 159
    :catch_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 161
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    .line 163
    check-cast p0, Landroid/util/ArrayMap;

    .line 165
    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :goto_1
    monitor-exit p1

    .line 169
    return-void

    .line 170
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    throw p0
.end method
