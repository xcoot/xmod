.class public final synthetic Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Ljava/util/function/Consumer;

    .line 10
    const-string v0, "Got detection status of "

    .line 12
    const-string v1, "android.app.ambientcontext.AmbientContextServiceStatusBundleKey"

    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;

    .line 20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    move-result-wide v1

    .line 24
    :try_start_0
    invoke-virtual {p1}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->getStatusCode()I

    .line 27
    move-result v3

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v4

    .line 32
    invoke-interface {p0, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 35
    const-string p0, "AmbientContextManagerPerUserService"

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v0, " for "

    .line 47
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->getPackageName()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    throw p0

    .line 73
    :pswitch_0
    check-cast p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    const-string v0, "android.app.ambientcontext.AmbientContextDetectionResultBundleKey"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/service/ambientcontext/AmbientContextDetectionResult;

    .line 86
    invoke-virtual {p1}, Landroid/service/ambientcontext/AmbientContextDetectionResult;->getPackageName()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 92
    check-cast v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 94
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 96
    iget-object v2, v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    .line 98
    monitor-enter v2

    .line 99
    :try_start_1
    iget-object v1, v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    .line 101
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 104
    move-result-object v1

    .line 105
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_1

    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;

    .line 117
    invoke-virtual {v3, p0, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->hasUserIdAndPackageName(ILjava/lang/String;)Z

    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_0

    .line 123
    iget-object p0, v3, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mObserver:Landroid/app/ambientcontext/IAmbientContextObserver;

    .line 125
    monitor-exit v2

    .line 126
    goto :goto_0

    .line 127
    :catchall_1
    move-exception p0

    .line 128
    goto :goto_4

    .line 129
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    const/4 p0, 0x0

    .line 131
    :goto_0
    if-nez p0, :cond_2

    .line 133
    goto :goto_2

    .line 134
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 137
    move-result-wide v1

    .line 138
    :try_start_2
    invoke-virtual {p1}, Landroid/service/ambientcontext/AmbientContextDetectionResult;->getEvents()Ljava/util/List;

    .line 141
    move-result-object v3

    .line 142
    invoke-interface {p0, v3}, Landroid/app/ambientcontext/IAmbientContextObserver;->onEvents(Ljava/util/List;)V

    .line 145
    const-string p0, "AmbientContextManagerPerUserService"

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    .line 149
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    const-string v4, "Got detection result of "

    .line 154
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p1}, Landroid/service/ambientcontext/AmbientContextDetectionResult;->getEvents()Ljava/util/List;

    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    const-string p1, " for "

    .line 166
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 179
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 182
    goto :goto_2

    .line 183
    :catchall_2
    move-exception p0

    .line 184
    goto :goto_3

    .line 185
    :catch_0
    move-exception p0

    .line 186
    :try_start_3
    const-string p1, "AmbientContextManagerPerUserService"

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    .line 190
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    const-string v3, "Failed to call IAmbientContextObserver.onEvents: "

    .line 195
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 201
    move-result-object p0

    .line 202
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object p0

    .line 209
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 212
    goto :goto_1

    .line 213
    :goto_2
    return-void

    .line 214
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 217
    throw p0

    .line 218
    :goto_4
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 219
    throw p0

    .line 220
    nop

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
