.class public final synthetic Lcom/android/server/biometrics/sensors/BiometricScheduler$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

.field public final synthetic f$1:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;Lcom/android/server/biometrics/sensors/BaseClientMonitor;ZI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 5
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 7
    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 8
    check-cast v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$UserSwitchClientCallback;

    .line 10
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 12
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1$$ExternalSyntheticLambda0;->f$2:Z

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    const-string v3, "[Client finished] "

    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    const-string v3, ", success: "

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    const-string v3, "BiometricScheduler"

    .line 41
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    instance-of v1, v1, Lcom/android/server/biometrics/sensors/StopUserClient;

    .line 46
    const/4 v2, 0x0

    .line 47
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$UserSwitchClientCallback;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 49
    if-eqz v1, :cond_1

    .line 51
    if-nez p0, :cond_0

    .line 53
    const-string p0, "StopUserClient failed(), is the HAL stuck? Clearing mStopUserClient"

    .line 55
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    iput-object v2, v4, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    .line 60
    :cond_1
    iget-object p0, v4, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 62
    if-eqz p0, :cond_2

    .line 64
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 66
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$UserSwitchClientCallback;->mOwner:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 68
    if-ne p0, v0, :cond_2

    .line 70
    iput-object v2, v4, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    const-string/jumbo v0, "operation is already null or different (reset?): "

    .line 78
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    iget-object v0, v4, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->checkCurrentUserAndStartNextOperation()V

    .line 96
    return-void

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 99
    check-cast v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;

    .line 101
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 103
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1$$ExternalSyntheticLambda0;->f$2:Z

    .line 105
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 107
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 109
    const-string v3, "[Finishing] "

    .line 111
    const-string v4, "BiometricScheduler"

    .line 113
    if-nez v2, :cond_3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, " but current operation is null, success: "

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    const-string p0, ", possible lifecycle bug in clientMonitor implementation?"

    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p0

    .line 140
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    goto/16 :goto_1

    .line 145
    :cond_3
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 147
    if-ne v2, v1, :cond_7

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, ", success: "

    .line 159
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object p0

    .line 169
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    .line 174
    const/4 v1, 0x0

    .line 175
    if-eqz p0, :cond_4

    .line 177
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 179
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 181
    iget v2, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 183
    invoke-virtual {p0, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->markSensorActive(IZ)V

    .line 186
    :cond_4
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    .line 188
    check-cast p0, Ljava/util/ArrayList;

    .line 190
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 193
    move-result p0

    .line 194
    iget v2, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperationsLimit:I

    .line 196
    if-lt p0, v2, :cond_5

    .line 198
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    .line 200
    check-cast p0, Ljava/util/ArrayList;

    .line 202
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 205
    :cond_5
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    .line 207
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 209
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 211
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getProtoEnum()I

    .line 214
    move-result v1

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    move-result-object v1

    .line 219
    check-cast p0, Ljava/util/ArrayList;

    .line 221
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 226
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 228
    if-eqz p0, :cond_6

    .line 230
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->destroy()V

    .line 233
    :cond_6
    const/4 p0, 0x0

    .line 234
    iput-object p0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 236
    iget p0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mTotalOperationsHandled:I

    .line 238
    add-int/lit8 p0, p0, 0x1

    .line 240
    iput p0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mTotalOperationsHandled:I

    .line 242
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->checkCurrentUserAndStartNextOperation()V

    .line 245
    goto :goto_1

    .line 246
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 248
    const-string v2, "[Ignoring Finish] "

    .line 250
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, " does not match current: "

    .line 258
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 263
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object p0

    .line 270
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_1
    return-void

    .line 274
    nop

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
