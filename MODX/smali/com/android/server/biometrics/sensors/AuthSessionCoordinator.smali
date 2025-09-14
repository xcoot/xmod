.class public final Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAuthOperations:Ljava/util/Set;

.field public mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

.field public mIsAuthenticating:Z

.field public final mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

.field public final mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

.field public mUserId:I


# direct methods
.method public constructor <init>(Ljava/time/Clock;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    .line 11
    new-instance v0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    .line 13
    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    .line 18
    new-instance v0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    .line 20
    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;-><init>(Ljava/time/Clock;)V

    .line 23
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    .line 25
    new-instance p1, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    .line 27
    invoke-direct {p1}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    .line 32
    return-void
.end method


# virtual methods
.method public final attemptToFinish(IILjava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashSet;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, "AuthSessionCoordinator"

    .line 16
    const/4 v3, 0x1

    .line 17
    if-nez v0, :cond_0

    .line 19
    const-string v0, "Error unable to find auth operation : "

    .line 21
    invoke-static {v0, p3, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    move v0, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v1

    .line 27
    :goto_0
    iget v4, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    .line 29
    if-eq p1, v4, :cond_1

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    const-string v0, "Error mismatched userId, expected="

    .line 35
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v0, " for "

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    move v0, v3

    .line 59
    :cond_1
    if-eqz v0, :cond_2

    .line 61
    return-void

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object p2

    .line 68
    check-cast p1, Ljava/util/HashSet;

    .line 70
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 73
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mIsAuthenticating:Z

    .line 75
    if-eqz p1, :cond_d

    .line 77
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    .line 79
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->mAuthenticatorState:Ljava/util/Map;

    .line 81
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 84
    move-result-object p1

    .line 85
    const/16 p2, 0xfff

    .line 87
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object p3

    .line 91
    const/16 v0, 0xff

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v2

    .line 97
    const/16 v4, 0xf

    .line 99
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object v5

    .line 103
    filled-new-array {p3, v2, v5}, [Ljava/lang/Integer;

    .line 106
    move-result-object p3

    .line 107
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 110
    move-result-object p3

    .line 111
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 114
    move-result-object p3

    .line 115
    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_c

    .line 121
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Ljava/lang/Integer;

    .line 127
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 130
    move-result v5

    .line 131
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Ljava/lang/Integer;

    .line 137
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 140
    move-result v6

    .line 141
    const/4 v7, 0x4

    .line 142
    and-int/2addr v6, v7

    .line 143
    iget-object v8, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    .line 145
    if-ne v6, v7, :cond_4

    .line 147
    iget v2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    .line 149
    invoke-virtual {v8, v2, v5}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->clearPermanentLockOut(II)V

    .line 152
    iget v2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    .line 154
    invoke-virtual {v8, v2, v5}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->clearTimedLockout(II)V

    .line 157
    goto :goto_1

    .line 158
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 161
    move-result v6

    .line 162
    and-int/2addr v6, v3

    .line 163
    const-string v7, "MultiBiometricLockoutState"

    .line 165
    const-string/jumbo v9, "increaseLockoutTime called for invalid strength : "

    .line 168
    if-ne v6, v3, :cond_8

    .line 170
    iget v2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    .line 172
    invoke-virtual {v8, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getAuthMapForUser(I)Ljava/util/Map;

    .line 175
    move-result-object v2

    .line 176
    if-eq v5, v4, :cond_5

    .line 178
    if-eq v5, v0, :cond_6

    .line 180
    if-eq v5, p2, :cond_7

    .line 182
    invoke-static {v5, v9, v7}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 185
    goto :goto_1

    .line 186
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    move-result-object v5

    .line 190
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    move-result-object v5

    .line 194
    check-cast v5, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 196
    iput-boolean v3, v5, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mPermanentlyLockedOut:Z

    .line 198
    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    move-result-object v5

    .line 202
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    move-result-object v5

    .line 206
    check-cast v5, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 208
    iput-boolean v3, v5, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mPermanentlyLockedOut:Z

    .line 210
    :cond_7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    move-result-object v5

    .line 214
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    move-result-object v2

    .line 218
    check-cast v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 220
    iput-boolean v3, v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mPermanentlyLockedOut:Z

    .line 222
    goto :goto_1

    .line 223
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 226
    move-result v2

    .line 227
    const/4 v6, 0x2

    .line 228
    and-int/2addr v2, v6

    .line 229
    if-ne v2, v6, :cond_3

    .line 231
    iget v2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    .line 233
    invoke-virtual {v8, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getAuthMapForUser(I)Ljava/util/Map;

    .line 236
    move-result-object v2

    .line 237
    if-eq v5, v4, :cond_9

    .line 239
    if-eq v5, v0, :cond_a

    .line 241
    if-eq v5, p2, :cond_b

    .line 243
    invoke-static {v5, v9, v7}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    goto/16 :goto_1

    .line 248
    :cond_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    move-result-object v5

    .line 252
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    move-result-object v5

    .line 256
    check-cast v5, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 258
    iput-boolean v3, v5, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mTimedLockout:Z

    .line 260
    :cond_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    move-result-object v5

    .line 264
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    move-result-object v5

    .line 268
    check-cast v5, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 270
    iput-boolean v3, v5, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mTimedLockout:Z

    .line 272
    :cond_b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    move-result-object v5

    .line 276
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    move-result-object v2

    .line 280
    check-cast v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 282
    iput-boolean v3, v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mTimedLockout:Z

    .line 284
    goto/16 :goto_1

    .line 286
    :cond_c
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    .line 288
    check-cast p1, Ljava/util/HashSet;

    .line 290
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 293
    move-result p1

    .line 294
    if-eqz p1, :cond_d

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    .line 298
    const-string/jumbo p2, "internal : onAuthSessionEnded("

    .line 301
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    iget p2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    .line 306
    const-string p3, ")"

    .line 308
    invoke-static {p2, p1, p3}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    move-result-object p1

    .line 312
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    .line 314
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    .line 317
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mIsAuthenticating:Z

    .line 319
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    .line 321
    check-cast p0, Ljava/util/HashSet;

    .line 323
    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 326
    :cond_d
    return-void
.end method

.method public final declared-synchronized authEndedFor(JIIIZ)V
    .locals 2

    .line 1
    const-string v0, "authEndedFor(userId="

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v0, " ,biometricStrength="

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v0, ", sensorId="

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v0, ", requestId="

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    const-string p1, ", wasSuccessful="

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    const-string p1, ")"

    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    .line 55
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    .line 58
    if-eqz p6, :cond_0

    .line 60
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    .line 62
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    const/16 p6, 0xf

    .line 67
    if-ne p4, p6, :cond_0

    .line 69
    new-instance p6, Lcom/android/server/biometrics/sensors/AuthResultCoordinator$$ExternalSyntheticLambda0;

    .line 71
    const/4 v0, 0x2

    .line 72
    invoke-direct {p6, v0}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator$$ExternalSyntheticLambda0;-><init>(I)V

    .line 75
    invoke-virtual {p2, p4, p6}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->updateState(ILjava/util/function/IntFunction;)V

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    goto :goto_1

    .line 81
    :cond_0
    :goto_0
    invoke-virtual {p0, p3, p5, p1}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->attemptToFinish(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    .line 85
    return-void

    .line 86
    :goto_1
    monitor-exit p0

    .line 87
    throw p1
.end method

.method public final declared-synchronized authStartedFor(IIJ)V
    .locals 5

    .line 1
    const-string v0, "Error authStartedFor("

    .line 3
    const-string v1, "Error, authStartedFor("

    .line 5
    const-string v2, "authStartedFor(userId="

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, ", sensorId="

    .line 20
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v2, ", requestId="

    .line 28
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    const-string p3, ")"

    .line 36
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {v3, p3}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    .line 46
    iget-boolean p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mIsAuthenticating:Z

    .line 48
    if-nez p3, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->onAuthSessionStarted(I)V

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    .line 58
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object p4

    .line 62
    check-cast p3, Ljava/util/HashSet;

    .line 64
    invoke-virtual {p3, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 67
    move-result p3

    .line 68
    if-eqz p3, :cond_1

    .line 70
    const-string p1, "AuthSessionCoordinator"

    .line 72
    new-instance p3, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string p2, ") without being finished"

    .line 82
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p2

    .line 89
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    .line 93
    return-void

    .line 94
    :cond_1
    :try_start_1
    iget p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    .line 96
    if-eq p3, p1, :cond_2

    .line 98
    const-string p2, "AuthSessionCoordinator"

    .line 100
    new-instance p3, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string p1, ") Incorrect userId, expected"

    .line 110
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    .line 115
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    const-string p1, ", ignoring..."

    .line 120
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    monitor-exit p0

    .line 131
    return-void

    .line 132
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    .line 134
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    move-result-object p2

    .line 138
    check-cast p1, Ljava/util/HashSet;

    .line 140
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    monitor-exit p0

    .line 144
    return-void

    .line 145
    :goto_1
    monitor-exit p0

    .line 146
    throw p1
.end method

.method public final declared-synchronized lockOutTimed(IIIJJ)V
    .locals 2

    .line 1
    const-string/jumbo v0, "lockOutTimedFor(userId="

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v0, ", biometricStrength="

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v0, ", sensorId="

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v0, ", time="

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    const-string p4, ", requestId="

    .line 39
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    const-string p4, ")"

    .line 47
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p4

    .line 54
    iget-object p5, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    .line 56
    invoke-virtual {p5, p4}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    .line 59
    iget-object p5, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    .line 61
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    new-instance p6, Lcom/android/server/biometrics/sensors/AuthResultCoordinator$$ExternalSyntheticLambda0;

    .line 66
    const/4 p7, 0x1

    .line 67
    invoke-direct {p6, p7}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator$$ExternalSyntheticLambda0;-><init>(I)V

    .line 70
    invoke-virtual {p5, p2, p6}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->updateState(ILjava/util/function/IntFunction;)V

    .line 73
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->attemptToFinish(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    monitor-exit p0

    .line 80
    throw p1
.end method

.method public final declared-synchronized lockedOutFor(IIIJ)V
    .locals 2

    .line 1
    const-string/jumbo v0, "lockOutFor(userId="

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v0, ", biometricStrength="

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v0, ", sensorId="

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v0, ", requestId="

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    const-string p4, ")"

    .line 39
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p4

    .line 46
    iget-object p5, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    .line 48
    invoke-virtual {p5, p4}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    .line 51
    iget-object p5, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    .line 53
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    new-instance v0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator$$ExternalSyntheticLambda0;

    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator$$ExternalSyntheticLambda0;-><init>(I)V

    .line 62
    invoke-virtual {p5, p2, v0}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;->updateState(ILjava/util/function/IntFunction;)V

    .line 65
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->attemptToFinish(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    monitor-exit p0

    .line 72
    throw p1
.end method

.method public final onAuthSessionStarted(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    .line 3
    check-cast v0, Ljava/util/HashSet;

    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 8
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mUserId:I

    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mIsAuthenticating:Z

    .line 13
    new-instance v0, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    .line 15
    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/AuthResultCoordinator;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthResultCoordinator:Lcom/android/server/biometrics/sensors/AuthResultCoordinator;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    const-string/jumbo v1, "internal : onAuthSessionStarted("

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string p1, ")"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public final declared-synchronized resetLockoutFor(IIJ)V
    .locals 2

    .line 1
    const-string/jumbo v0, "resetLockoutFor(userId="

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v0, " ,biometricStrength="

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v0, ", requestId="

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    const-string p3, ")"

    .line 31
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p3

    .line 38
    iget-object p4, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    .line 40
    invoke-virtual {p4, p3}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->addApiCall(Ljava/lang/String;)V

    .line 43
    const/16 p3, 0xf

    .line 45
    if-ne p2, p3, :cond_0

    .line 47
    const/4 p3, 0x0

    .line 48
    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mIsAuthenticating:Z

    .line 50
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mAuthOperations:Ljava/util/Set;

    .line 52
    check-cast p3, Ljava/util/HashSet;

    .line 54
    invoke-virtual {p3}, Ljava/util/HashSet;->clear()V

    .line 57
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    .line 59
    invoke-virtual {p3, p1, p2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->clearPermanentLockOut(II)V

    .line 62
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    .line 64
    invoke-virtual {p3, p1, p2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->clearTimedLockout(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    :try_start_1
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    .line 73
    invoke-virtual {p3, p1, p2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->clearTimedLockout(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    monitor-exit p0

    .line 77
    return-void

    .line 78
    :goto_0
    monitor-exit p0

    .line 79
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mRingBuffer:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "\n"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
