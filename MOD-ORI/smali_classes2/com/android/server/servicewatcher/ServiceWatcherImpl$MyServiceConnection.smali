.class public final Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public volatile mBinder:Landroid/os/IBinder;

.field public final mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

.field public mRebinder:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda0;

.field public final synthetic this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    sget-boolean v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->D:Z

    .line 27
    .line 28
    const-string v1, "ServiceWatcher"

    .line 29
    .line 30
    const-string v2, "["

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 40
    .line 41
    iget-object v3, v3, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v3, "] binding to "

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_2
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mRebinder:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    new-instance v0, Landroid/content/Intent;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 69
    .line 70
    iget-object v3, v3, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mAction:Ljava/lang/String;

    .line 71
    .line 72
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 76
    .line 77
    iget-object v3, v3, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 84
    .line 85
    iget-object v4, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    iget-object v8, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 90
    .line 91
    iget v0, v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mUid:I

    .line 92
    .line 93
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    const v7, 0x40000005    # 2.0000012f

    .line 102
    .line 103
    .line 104
    move-object v6, p0

    .line 105
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_3

    .line 110
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 117
    .line 118
    iget-object v3, v3, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v3, "] unexpected bind failure - retrying later"

    .line 124
    .line 125
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda0;

    .line 136
    .line 137
    const/4 v3, 0x1

    .line 138
    invoke-direct {v0, p0, v3}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;I)V

    .line 139
    .line 140
    .line 141
    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mRebinder:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda0;

    .line 142
    .line 143
    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 144
    .line 145
    iget-object v3, v3, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    .line 146
    .line 147
    const-wide/16 v4, 0x3a98

    .line 148
    .line 149
    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 160
    .line 161
    iget-object v2, v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v2, "] "

    .line 167
    .line 168
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 172
    .line 173
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string p0, " bind failed"

    .line 177
    .line 178
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .line 187
    .line 188
    :cond_3
    :goto_1
    return-void
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v0, "["

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, "] "

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, " died"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v0, "ServiceWatcher"

    .line 55
    .line 56
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mConnectionRecord:Lcom/android/server/location/nsflp/NSConnectionRecord;

    .line 62
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    iput-wide v0, p1, Lcom/android/server/location/nsflp/NSConnectionRecord;->serviceBindingDiedTime:J

    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    .line 72
    .line 73
    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-direct {v0, p0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;I)V

    .line 77
    .line 78
    .line 79
    const-wide/16 v1, 0x1f4

    .line 80
    .line 81
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "["

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, "] "

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p0, " has null binding"

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string p1, "ServiceWatcher"

    .line 35
    .line 36
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    move v0, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    move v2, v3

    .line 28
    :cond_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "["

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, "] connected to "

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v2, "ServiceWatcher"

    .line 62
    .line 63
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    :try_start_0
    iget-object v4, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 75
    .line 76
    invoke-interface {v0, p2, v4}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;->onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception p2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, "] error running operation on "

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .line 109
    .line 110
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 111
    .line 112
    iget-object p2, p2, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mNsHandler:Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;

    .line 113
    .line 114
    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->PROXY_SERVICE_RECONNECTION_TIMEOUT:Landroid/location/LocationConstants$STATE_TYPE;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/location/LocationConstants$STATE_TYPE;->ordinal()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    .line 122
    .line 123
    iget-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 124
    .line 125
    iget-object p2, p2, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mConnectionRecord:Lcom/android/server/location/nsflp/NSConnectionRecord;

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v1, p2, Lcom/android/server/location/nsflp/NSConnectionRecord;->componentName:Ljava/lang/String;

    .line 132
    .line 133
    if-eqz v1, :cond_3

    .line 134
    .line 135
    iput-object v1, p2, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    .line 136
    .line 137
    :cond_3
    iput-object v0, p2, Lcom/android/server/location/nsflp/NSConnectionRecord;->componentName:Ljava/lang/String;

    .line 138
    .line 139
    iget-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 140
    .line 141
    iget-object p2, p2, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mConnectionRecord:Lcom/android/server/location/nsflp/NSConnectionRecord;

    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iget-object v0, p2, Lcom/android/server/location/nsflp/NSConnectionRecord;->packageName:Ljava/lang/String;

    .line 148
    .line 149
    if-eqz v0, :cond_4

    .line 150
    .line 151
    iput-object v0, p2, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    .line 152
    .line 153
    :cond_4
    iput-object p1, p2, Lcom/android/server/location/nsflp/NSConnectionRecord;->packageName:Ljava/lang/String;

    .line 154
    .line 155
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 156
    .line 157
    iget-object p1, p1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mConnectionRecord:Lcom/android/server/location/nsflp/NSConnectionRecord;

    .line 158
    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 160
    .line 161
    .line 162
    move-result-wide v0

    .line 163
    iput-wide v0, p1, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectedTime:J

    .line 164
    .line 165
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 166
    .line 167
    iget-object p2, p1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mConnectionRecord:Lcom/android/server/location/nsflp/NSConnectionRecord;

    .line 168
    .line 169
    iget v0, p2, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectionCount:I

    .line 170
    .line 171
    add-int/2addr v0, v3

    .line 172
    iput v0, p2, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectionCount:I

    .line 173
    .line 174
    iget-object p1, p1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 175
    .line 176
    if-eqz p1, :cond_5

    .line 177
    .line 178
    new-instance p1, Landroid/os/Bundle;

    .line 179
    .line 180
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 181
    .line 182
    .line 183
    iget-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 184
    .line 185
    iget-object p2, p2, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mConnectionRecord:Lcom/android/server/location/nsflp/NSConnectionRecord;

    .line 186
    .line 187
    const-string/jumbo v0, "record"

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 191
    .line 192
    .line 193
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 194
    .line 195
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 196
    .line 197
    check-cast p0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 198
    .line 199
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 200
    .line 201
    sget-object p2, Landroid/location/LocationConstants$STATE_TYPE;->PROXY_SERVICE_CONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 202
    .line 203
    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 204
    .line 205
    .line 206
    :cond_5
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    move p1, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, "["

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, "] disconnected from "

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v0, "ServiceWatcher"

    .line 56
    .line 57
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    invoke-interface {p1}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;->onUnbind()V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mConnectionRecord:Lcom/android/server/location/nsflp/NSConnectionRecord;

    .line 75
    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    iput-wide v2, p1, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectedTime:J

    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 83
    .line 84
    iget-object v0, p1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mConnectionRecord:Lcom/android/server/location/nsflp/NSConnectionRecord;

    .line 85
    .line 86
    iget v2, v0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectionCount:I

    .line 87
    .line 88
    add-int/2addr v2, v1

    .line 89
    iput v2, v0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectionCount:I

    .line 90
    .line 91
    iget-object p1, p1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 92
    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    new-instance p1, Landroid/os/Bundle;

    .line 96
    .line 97
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mConnectionRecord:Lcom/android/server/location/nsflp/NSConnectionRecord;

    .line 103
    .line 104
    const-string/jumbo v1, "record"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 113
    .line 114
    check-cast v0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 117
    .line 118
    sget-object v1, Landroid/location/LocationConstants$STATE_TYPE;->PROXY_SERVICE_DISCONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 119
    .line 120
    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 124
    .line 125
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mNsHandler:Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;

    .line 126
    .line 127
    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->PROXY_SERVICE_RECONNECTION_TIMEOUT:Landroid/location/LocationConstants$STATE_TYPE;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/location/LocationConstants$STATE_TYPE;->ordinal()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    const-wide/32 v0, 0x36ee80

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    .line 138
    .line 139
    return-void
.end method
