.class public final Lcom/android/server/utils/ManagedApplicationService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/utils/ManagedApplicationService;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/ManagedApplicationService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v2, "ManagedApplicationService"

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "Service binding died: "

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter p1

    .line 34
    :try_start_0
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 35
    .line 36
    iget-object v3, v2, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Lcom/android/server/utils/ManagedApplicationService$1;

    .line 37
    .line 38
    if-eq v3, p0, :cond_0

    .line 39
    .line 40
    monitor-exit p1

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v2, v2, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    new-instance v3, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;

    .line 47
    .line 48
    const/4 v4, 0x3

    .line 49
    invoke-direct {v3, v4, v0, v1, p0}, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;-><init>(IJLjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V

    .line 61
    .line 62
    .line 63
    monitor-exit p1

    .line 64
    return-void

    .line 65
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    .line 1
    const-string v0, "Invalid binder from "

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v3, "ManagedApplicationService"

    .line 13
    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v5, "Service connected: "

    .line 17
    .line 18
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 32
    .line 33
    iget-object v3, v3, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v3

    .line 36
    :try_start_0
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 37
    .line 38
    iget-object v5, v4, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Lcom/android/server/utils/ManagedApplicationService$1;

    .line 39
    .line 40
    if-eq v5, p0, :cond_0

    .line 41
    .line 42
    monitor-exit v3

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_0
    iget-object v4, v4, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    .line 48
    .line 49
    new-instance v5, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    const/4 v6, 0x1

    .line 52
    invoke-direct {v5, v6, v1, v2, p0}, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;-><init>(IJLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    iput-boolean v2, v1, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z

    .line 62
    .line 63
    iget-object v2, v1, Lcom/android/server/utils/ManagedApplicationService;->mRetryRunnable:Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    iput-object v2, v1, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    .line 74
    .line 75
    iget-object v4, v1, Lcom/android/server/utils/ManagedApplicationService;->mChecker:Lcom/android/server/vr/VrManagerService$3;

    .line 76
    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    invoke-static {p2}, Landroid/service/vr/IVrListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrListener;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    iput-object p2, v1, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    .line 84
    .line 85
    iget-object p2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 86
    .line 87
    iget-object v1, p2, Lcom/android/server/utils/ManagedApplicationService;->mChecker:Lcom/android/server/vr/VrManagerService$3;

    .line 88
    .line 89
    iget-object p2, p2, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    instance-of p2, p2, Landroid/service/vr/IVrListener;

    .line 95
    .line 96
    if-nez p2, :cond_1

    .line 97
    .line 98
    iget-object p2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 99
    .line 100
    iput-object v2, p2, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    .line 101
    .line 102
    const-string p2, "ManagedApplicationService"

    .line 103
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V

    .line 122
    .line 123
    .line 124
    monitor-exit v3

    .line 125
    return-void

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 127
    .line 128
    iget-object p2, p1, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    .line 129
    .line 130
    iget-object v0, p1, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/vr/VrManagerService$6;

    .line 131
    .line 132
    iput-object v2, p1, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/vr/VrManagerService$6;

    .line 133
    .line 134
    move-object v2, p2

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    move-object v0, v2

    .line 137
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    if-eqz v2, :cond_3

    .line 139
    .line 140
    if-eqz v0, :cond_3

    .line 141
    .line 142
    :try_start_1
    check-cast v2, Landroid/service/vr/IVrListener;

    .line 143
    .line 144
    iget-object p1, v0, Lcom/android/server/vr/VrManagerService$6;->val$c:Landroid/content/ComponentName;

    .line 145
    .line 146
    iget-boolean p2, v0, Lcom/android/server/vr/VrManagerService$6;->val$b:Z

    .line 147
    .line 148
    iget v0, v0, Lcom/android/server/vr/VrManagerService$6;->val$pid:I

    .line 149
    .line 150
    invoke-interface {v2, p1, p2, v0}, Landroid/service/vr/IVrListener;->focusedActivityChanged(Landroid/content/ComponentName;ZI)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :catch_0
    move-exception p1

    .line 155
    iget-object p2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 156
    .line 157
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    const-string p2, "ManagedApplicationService"

    .line 161
    .line 162
    const-string v0, "Received exception from user service: "

    .line 163
    .line 164
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    .line 166
    .line 167
    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V

    .line 170
    .line 171
    .line 172
    :cond_3
    :goto_1
    return-void

    .line 173
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v2, "ManagedApplicationService"

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "Service disconnected: "

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter p1

    .line 34
    :try_start_0
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 35
    .line 36
    iget-object v3, v2, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Lcom/android/server/utils/ManagedApplicationService$1;

    .line 37
    .line 38
    if-eq v3, p0, :cond_0

    .line 39
    .line 40
    monitor-exit p1

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v2, v2, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    new-instance v3, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;

    .line 47
    .line 48
    const/4 v4, 0x2

    .line 49
    invoke-direct {v3, v4, v0, v1, p0}, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;-><init>(IJLjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V

    .line 61
    .line 62
    .line 63
    monitor-exit p1

    .line 64
    return-void

    .line 65
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method
