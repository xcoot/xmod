.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

.field public final synthetic f$1:Landroid/os/CancellationSignal;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/os/CancellationSignal;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda4;->f$1:Landroid/os/CancellationSignal;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda4;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda4;->f$1:Landroid/os/CancellationSignal;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda4;->f$2:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/util/Random;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    :goto_0
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 20
    .line 21
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    .line 22
    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 39
    .line 40
    iput v3, v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mCurrentEnrollmentId:I

    .line 41
    .line 42
    iget-object v3, v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 43
    .line 44
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    .line 45
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string/jumbo v5, "start enrollTPA: "

    .line 49
    .line 50
    .line 51
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 55
    .line 56
    iget v5, v5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mCurrentEnrollmentId:I

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v5, ", action size = "

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    check-cast v3, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const-string/jumbo v5, "fingerprint.aidl.SemTpaTestHal"

    .line 80
    .line 81
    .line 82
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_3

    .line 94
    .line 95
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_2

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_2
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 109
    .line 110
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    .line 111
    .line 112
    const/4 v7, 0x1

    .line 113
    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 114
    .line 115
    .line 116
    iput-object v6, v5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mActionDelayLatch:Ljava/util/concurrent/CountDownLatch;

    .line 117
    .line 118
    :try_start_0
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 119
    .line 120
    iget-object v5, v5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mActionDelayLatch:Ljava/util/concurrent/CountDownLatch;

    .line 121
    .line 122
    iget-wide v6, v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    .line 123
    .line 124
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 125
    .line 126
    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :catch_0
    move-exception v5

    .line 131
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    :goto_2
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->run()V

    .line 135
    .line 136
    .line 137
    iget-object v5, v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 138
    .line 139
    sget-object v6, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 140
    .line 141
    if-ne v5, v6, :cond_1

    .line 142
    .line 143
    iget v4, v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    .line 144
    .line 145
    if-nez v4, :cond_1

    .line 146
    .line 147
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 148
    .line 149
    iget-object v5, v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    .line 150
    .line 151
    iget v4, v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mCurrentEnrollmentId:I

    .line 152
    .line 153
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 161
    .line 162
    const/4 v5, 0x0

    .line 163
    iput v5, v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mCurrentEnrollmentId:I

    .line 164
    .line 165
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mAuthenticatorID:Landroid/util/SparseLongArray;

    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    .line 168
    .line 169
    .line 170
    move-result-wide v5

    .line 171
    invoke-virtual {v4, p0, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_3
    :goto_3
    return-void
.end method
