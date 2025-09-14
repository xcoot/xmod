.class public final Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mModuleId:I

.field public final synthetic this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;->mModuleId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 5

    .line 1
    const-string v0, "BcRadioAidlSrv"

    .line 2
    .line 3
    const-string v1, "ServiceDied for module id %d"

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;->mModuleId:I

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    .line 26
    .line 27
    iget v2, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;->mModuleId:I

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->closeSessions()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mServiceNameToModuleIdMap:Ljava/util/Map;

    .line 46
    .line 47
    check-cast v1, Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljava/util/Map$Entry;

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    iget v4, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;->mModuleId:I

    .line 80
    .line 81
    if-ne v3, v4, :cond_1

    .line 82
    .line 83
    const-string v1, "BcRadioAidlSrv"

    .line 84
    .line 85
    const-string v3, "Service %s died, removed RadioModule with ID %d"

    .line 86
    .line 87
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iget p0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;->mModuleId:I

    .line 92
    .line 93
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    filled-new-array {v2, p0}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {v1, v3, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    monitor-exit v0

    .line 105
    return-void

    .line 106
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw p0
.end method
