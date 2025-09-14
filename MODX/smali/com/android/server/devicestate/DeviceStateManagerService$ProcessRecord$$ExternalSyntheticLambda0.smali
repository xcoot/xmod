.class public final synthetic Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 5
    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 8
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Landroid/hardware/devicestate/DeviceStateInfo;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const-string v1, "Failed to notify process "

    .line 17
    const-wide/32 v2, 0x80000

    .line 20
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v6, "notifyDeviceStateInfoAsync(pid="

    .line 31
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget v6, v0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    .line 36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string v6, ")"

    .line 41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v5

    .line 48
    invoke-static {v2, v3, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 51
    :cond_0
    :try_start_0
    iget-object v5, v0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    .line 53
    invoke-interface {v5, p0}, Landroid/hardware/devicestate/IDeviceStateManagerCallback;->onDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-eqz v4, :cond_1

    .line 58
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_2

    .line 64
    :catch_0
    move-exception p0

    .line 65
    :try_start_1
    const-string v5, "DeviceStateManagerService"

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    iget v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    .line 74
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string v0, " that device state changed."

    .line 79
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    invoke-static {v5, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    if-eqz v4, :cond_1

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    :goto_1
    return-void

    .line 93
    :goto_2
    if-eqz v4, :cond_2

    .line 95
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 98
    :cond_2
    throw p0

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 101
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 103
    check-cast p0, Landroid/os/IBinder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    :try_start_2
    iget-object v1, v0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    .line 110
    invoke-interface {v1, p0}, Landroid/hardware/devicestate/IDeviceStateManagerCallback;->onRequestCanceled(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 113
    goto :goto_3

    .line 114
    :catch_1
    move-exception p0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    const-string v2, "Failed to notify process "

    .line 119
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    iget v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    const-string v0, " that request state changed."

    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    const-string v1, "DeviceStateManagerService"

    .line 138
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    :goto_3
    return-void

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 144
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 146
    check-cast p0, Landroid/os/IBinder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    :try_start_3
    iget-object v1, v0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    .line 153
    invoke-interface {v1, p0}, Landroid/hardware/devicestate/IDeviceStateManagerCallback;->onRequestActive(Landroid/os/IBinder;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 156
    goto :goto_4

    .line 157
    :catch_2
    move-exception p0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    .line 160
    const-string v2, "Failed to notify process "

    .line 162
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    iget v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const-string v0, " that request state changed."

    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v0

    .line 179
    const-string v1, "DeviceStateManagerService"

    .line 181
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    :goto_4
    return-void

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
