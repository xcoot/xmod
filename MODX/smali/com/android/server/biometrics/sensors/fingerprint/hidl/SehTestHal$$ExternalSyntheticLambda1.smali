.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    .line 13
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->cancel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentEnrollmentId:I

    .line 29
    return-void

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRequestActionTable:Landroid/util/SparseIntArray;

    .line 32
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 35
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRequestActionTable:Landroid/util/SparseIntArray;

    .line 37
    const/4 v1, 0x6

    .line 38
    const v2, 0x186c8

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 46
    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->initActions()V

    .line 51
    :cond_0
    return-void

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRandom:Ljava/util/Random;

    .line 54
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 57
    move-result v0

    .line 58
    :goto_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v2

    .line 64
    check-cast v1, Ljava/util/HashSet;

    .line 66
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRandom:Ljava/util/Random;

    .line 74
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 77
    move-result v0

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentEnrollmentId:I

    .line 81
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 83
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo v2, "start enrollTPA: "

    .line 90
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentEnrollmentId:I

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v2, ", action size = "

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    check-cast v0, Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 108
    move-result v2

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    const-string/jumbo v2, "fingerprint.hidl.SehTestHal"

    .line 119
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object v0

    .line 126
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_4

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 138
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 140
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_3

    .line 146
    goto :goto_4

    .line 147
    :cond_3
    :try_start_1
    iget-wide v2, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    .line 149
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    goto :goto_3

    .line 153
    :catch_1
    move-exception v2

    .line 154
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 157
    :goto_3
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->run()V

    .line 160
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 162
    sget-object v3, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 164
    if-ne v2, v3, :cond_2

    .line 166
    iget v1, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    .line 168
    if-nez v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    .line 172
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentEnrollmentId:I

    .line 174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    move-result-object v2

    .line 178
    check-cast v1, Ljava/util/HashSet;

    .line 180
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    const/4 v1, 0x0

    .line 184
    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentEnrollmentId:I

    .line 186
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mAuthenticatorID:Landroid/util/SparseLongArray;

    .line 188
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    .line 190
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRandom:Ljava/util/Random;

    .line 192
    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    .line 195
    move-result-wide v3

    .line 196
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 199
    goto :goto_2

    .line 200
    :cond_4
    :goto_4
    return-void

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
