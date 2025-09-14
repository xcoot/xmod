.class public final synthetic Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget p0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-boolean p0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const-string p0, "RemoteSystemCaptionsManagerService"

    .line 13
    .line 14
    const-string v0, "handleDestroy()"

    .line 15
    .line 16
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-boolean p1, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const-string p1, "RemoteSystemCaptionsManagerService"

    .line 31
    .line 32
    const-string v0, "handleDestroy(): Already destroyed"

    .line 33
    .line 34
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_3

    .line 40
    :cond_1
    :goto_0
    monitor-exit p0

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    .line 44
    .line 45
    iget-object v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    iget-boolean v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput-object v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    .line 59
    .line 60
    iget-boolean v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    const-string v0, "RemoteSystemCaptionsManagerService"

    .line 65
    .line 66
    const-string v1, "ensureUnbound(): unbinding"

    .line 67
    .line 68
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_4
    iget-object v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    iget-object p1, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mServiceConnection:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    monitor-exit p0

    .line 79
    :goto_2
    return-void

    .line 80
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p1

    .line 82
    :pswitch_0
    const-string p0, " with flags 67112961"

    .line 83
    .line 84
    const-string v0, "Could not bind to "

    .line 85
    .line 86
    iget-object v1, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    .line 87
    .line 88
    monitor-enter v1

    .line 89
    :try_start_1
    iget-object v2, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    .line 90
    .line 91
    if-nez v2, :cond_8

    .line 92
    .line 93
    iget-boolean v2, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    .line 94
    .line 95
    if-eqz v2, :cond_5

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_5
    iget-boolean v2, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    .line 99
    .line 100
    if-eqz v2, :cond_6

    .line 101
    .line 102
    const-string v2, "RemoteSystemCaptionsManagerService"

    .line 103
    .line 104
    const-string v3, "handleEnsureBound(): binding"

    .line 105
    .line 106
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    goto :goto_4

    .line 110
    :catchall_1
    move-exception p0

    .line 111
    goto :goto_7

    .line 112
    :cond_6
    :goto_4
    const/4 v2, 0x1

    .line 113
    iput-boolean v2, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    .line 114
    .line 115
    iget-object v3, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    iget-object v4, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mIntent:Landroid/content/Intent;

    .line 118
    .line 119
    iget-object v5, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mServiceConnection:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

    .line 120
    .line 121
    iget-object v7, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mHandler:Landroid/os/Handler;

    .line 122
    .line 123
    new-instance v8, Landroid/os/UserHandle;

    .line 124
    .line 125
    iget v2, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mUserId:I

    .line 126
    .line 127
    invoke-direct {v8, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 128
    .line 129
    .line 130
    const v6, 0x4001001

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-nez v2, :cond_7

    .line 138
    .line 139
    const-string v2, "RemoteSystemCaptionsManagerService"

    .line 140
    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mIntent:Landroid/content/Intent;

    .line 147
    .line 148
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    const/4 p0, 0x0

    .line 162
    iput-boolean p0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    .line 163
    .line 164
    const/4 p0, 0x0

    .line 165
    iput-object p0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    .line 166
    .line 167
    :cond_7
    monitor-exit v1

    .line 168
    goto :goto_6

    .line 169
    :cond_8
    :goto_5
    monitor-exit v1

    .line 170
    :goto_6
    return-void

    .line 171
    :goto_7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    throw p0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
