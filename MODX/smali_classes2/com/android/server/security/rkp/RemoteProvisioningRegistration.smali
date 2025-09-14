.class public final Lcom/android/server/security/rkp/RemoteProvisioningRegistration;
.super Landroid/security/rkp/IRegistration$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mGetKeyOperations:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mRegistration:Landroid/security/rkp/service/RegistrationProxy;

.field public final mStoreUpgradedKeyOperations:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/security/rkp/service/RegistrationProxy;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/security/rkp/IRegistration$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mGetKeyOperations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mStoreUpgradedKeyOperations:Ljava/util/Set;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mRegistration:Landroid/security/rkp/service/RegistrationProxy;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final cancelGetKey(Landroid/security/rkp/IGetKeyCallback;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mGetKeyOperations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/os/CancellationSignal;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "Requesting cancellation for client "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Landroid/os/IBinder;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "RemoteProvisionSysSvc"

    .line 38
    .line 39
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v1, "Invalid client in cancelGetKey: "

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1}, Landroid/os/IBinder;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method

.method public final getKey(ILandroid/security/rkp/IGetKeyCallback;)V
    .locals 5

    .line 1
    const-string v0, "Fetching key "

    .line 2
    .line 3
    new-instance v1, Landroid/os/CancellationSignal;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mGetKeyOperations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-interface {p2}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "RemoteProvisionSysSvc"

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, " for client "

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-interface {p2}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mRegistration:Landroid/security/rkp/service/RegistrationProxy;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 56
    .line 57
    new-instance v4, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;

    .line 58
    .line 59
    invoke-direct {v4, p0, p2}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;-><init>(Lcom/android/server/security/rkp/RemoteProvisioningRegistration;Landroid/security/rkp/IGetKeyCallback;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1, v1, v2, v4}, Landroid/security/rkp/service/RegistrationProxy;->getKeyAsync(ILandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v1, "getKeyAsync threw an exception for client "

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p2}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-interface {v1}, Landroid/os/IBinder;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mGetKeyOperations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    .line 94
    invoke-interface {p2}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const/4 p1, 0x1

    .line 106
    invoke-interface {p2, p1, p0}, Landroid/security/rkp/IGetKeyCallback;->onError(BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catch_1
    move-exception p0

    .line 111
    const-string p1, "Error invoking callback on client binder"

    .line 112
    .line 113
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .line 115
    .line 116
    :goto_0
    return-void

    .line 117
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string p1, "Client can only request one call at a time "

    .line 120
    .line 121
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p2}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-interface {p1}, Landroid/os/IBinder;->hashCode()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 143
    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v0, "Callback is already associated with an existing operation: "

    .line 147
    .line 148
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-interface {p2}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-interface {p2}, Landroid/os/IBinder;->hashCode()I

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p0
.end method

.method public final storeUpgradedKeyAsync([B[BLandroid/security/rkp/IStoreUpgradedKeyCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mStoreUpgradedKeyOperations:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p3}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mRegistration:Landroid/security/rkp/service/RegistrationProxy;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    new-instance v2, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;

    .line 18
    .line 19
    invoke-direct {v2, p0, p3}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;-><init>(Lcom/android/server/security/rkp/RemoteProvisioningRegistration;Landroid/security/rkp/IStoreUpgradedKeyCallback;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/security/rkp/service/RegistrationProxy;->storeUpgradedKeyAsync([B[BLjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string/jumbo v0, "storeUpgradedKeyAsync threw an exception for client "

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p3}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string v0, "RemoteProvisionSysSvc"

    .line 51
    .line 52
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mStoreUpgradedKeyOperations:Ljava/util/Set;

    .line 56
    .line 57
    invoke-interface {p3}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-interface {p3, p0}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->onError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_1
    move-exception p0

    .line 73
    const-string p1, "Error invoking callback on client binder"

    .line 74
    .line 75
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string p2, "Callback is already associated with an existing operation: "

    .line 84
    .line 85
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {p3}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-interface {p2}, Landroid/os/IBinder;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0
.end method
