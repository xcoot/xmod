.class public final synthetic Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    new-instance v0, Landroid/os/DeadObjectException;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-interface {p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;->onError(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :try_start_0
    iget-object v1, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    .line 49
    .line 50
    invoke-interface {p0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;->run(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception v1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v3, "["

    .line 58
    .line 59
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v3, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 63
    .line 64
    iget-object v3, v3, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, "] error running operation on "

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v2, "ServiceWatcher"

    .line 84
    .line 85
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .line 87
    .line 88
    invoke-interface {p0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;->onError(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v2, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 106
    .line 107
    iget-object v2, v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-ne v1, v2, :cond_2

    .line 114
    .line 115
    const/4 v1, 0x1

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    const/4 v1, 0x0

    .line 118
    :goto_2
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 122
    .line 123
    if-nez v1, :cond_3

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_3
    sget-boolean v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->D:Z

    .line 127
    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v2, "["

    .line 133
    .line 134
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v2, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 138
    .line 139
    iget-object v2, v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v2, "] unbinding from "

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget-object v2, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    const-string v2, "ServiceWatcher"

    .line 159
    .line 160
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    :cond_4
    iget-object v1, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mRebinder:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda0;

    .line 164
    .line 165
    if-eqz v1, :cond_5

    .line 166
    .line 167
    iget-object v2, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 168
    .line 169
    iget-object v2, v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    .line 170
    .line 171
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    .line 173
    .line 174
    const/4 v1, 0x0

    .line 175
    iput-object v1, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mRebinder:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda0;

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_5
    iget-object v1, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 179
    .line 180
    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mContext:Landroid/content/Context;

    .line 181
    .line 182
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 183
    .line 184
    .line 185
    :goto_3
    iget-object v1, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 186
    .line 187
    iget-object v1, v1, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 190
    .line 191
    .line 192
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->bind()V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    nop

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
