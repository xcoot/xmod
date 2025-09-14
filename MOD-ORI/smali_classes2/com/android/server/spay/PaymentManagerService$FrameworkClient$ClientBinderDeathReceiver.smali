.class public final Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mReceiver:Landroid/os/IBinder;

.field public final synthetic this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;


# direct methods
.method public constructor <init>(Lcom/android/server/spay/PaymentManagerService$FrameworkClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    const-string v0, "PaymentManagerService"

    .line 2
    .line 3
    const-string v1, "Error: Framework App dead, unloading loaded TAs"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->deleteClient()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final declared-synchronized deleteClient()V
    .locals 5

    .line 1
    const-string v0, "Error: Client stopped. Clearing Databstructures for "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "PaymentManagerService"

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mPackageName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

    .line 28
    .line 29
    iget-object v0, v0, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/Integer;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

    .line 54
    .line 55
    iget-object v2, v2, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcom/android/server/spay/TAController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/16 v3, 0x101

    .line 68
    .line 69
    if-ne v1, v3, :cond_1

    .line 70
    .line 71
    iget-boolean v1, v2, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    .line 72
    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    sget-object v1, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {v1}, Lcom/android/server/spay/Utils;->sendSecureUIAbortIntent(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    const-string v1, "PaymentManagerService"

    .line 81
    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string/jumbo v4, "sendSecureUIAbortIntent: "

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const/4 v4, 0x1

    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    :goto_1
    const/16 v3, 0xa

    .line 106
    .line 107
    if-ge v1, v3, :cond_1

    .line 108
    .line 109
    iget-boolean v3, v2, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    .line 110
    .line 111
    if-nez v3, :cond_0

    .line 112
    .line 113
    const-string v1, "PaymentManagerService"

    .line 114
    .line 115
    const-string/jumbo v3, "secureUI unsetted"

    .line 116
    .line 117
    .line 118
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :catchall_0
    move-exception v0

    .line 123
    goto :goto_5

    .line 124
    :catch_0
    move-exception v1

    .line 125
    goto :goto_4

    .line 126
    :cond_0
    const-wide/16 v3, 0x64

    .line 127
    .line 128
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :catch_1
    :try_start_3
    const-string v3, "PaymentManagerService"

    .line 133
    .line 134
    const-string v4, "Failed to put thread to sleep!"

    .line 135
    .line 136
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_1
    :goto_3
    invoke-virtual {v2}, Lcom/android/server/spay/TAController;->unloadTA()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    .line 151
    .line 152
    iget-object v1, v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->this$0:Lcom/android/server/spay/PaymentManagerService;

    .line 153
    .line 154
    iget-object v1, v1, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mPackageName:Ljava/lang/String;

    .line 157
    .line 158
    check-cast v1, Ljava/util/HashMap;

    .line 159
    .line 160
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    .line 162
    .line 163
    monitor-exit p0

    .line 164
    return-void

    .line 165
    :goto_5
    monitor-exit p0

    .line 166
    throw v0
.end method
