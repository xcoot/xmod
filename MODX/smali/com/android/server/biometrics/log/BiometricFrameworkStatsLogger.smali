.class public final Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sInstance:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sInstance:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 8
    return-void
.end method

.method public static authenticate(Lcom/android/server/biometrics/log/OperationContextExt;IIZJIZIF)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 5
    iget-boolean v5, v1, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    .line 7
    invoke-static/range {p4 .. p5}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sanitizeLatency(J)J

    .line 10
    move-result-wide v9

    .line 11
    iget-object v1, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 13
    iget v14, v1, Landroid/hardware/biometrics/common/OperationContext;->id:I

    .line 15
    iget-byte v2, v1, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v6, 0x2

    .line 20
    if-ne v2, v4, :cond_0

    .line 22
    move v15, v6

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-ne v2, v6, :cond_1

    .line 26
    move v15, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v15, v3

    .line 29
    :goto_0
    iget-boolean v1, v1, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    .line 31
    iget-boolean v13, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsDisplayOn:Z

    .line 33
    iget v11, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mDockState:I

    .line 35
    iget v2, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mOrientation:I

    .line 37
    invoke-static {v2}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->orientationType(I)I

    .line 40
    move-result v19

    .line 41
    iget v2, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mFoldState:I

    .line 43
    const/4 v7, 0x3

    .line 44
    if-eq v2, v4, :cond_4

    .line 46
    if-eq v2, v6, :cond_3

    .line 48
    if-eq v2, v7, :cond_2

    .line 50
    move/from16 v20, v3

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move/from16 v20, v6

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move/from16 v20, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    move/from16 v20, v7

    .line 61
    :goto_1
    iget-object v2, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    .line 63
    if-eqz v2, :cond_5

    .line 65
    iget-object v2, v2, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->mOrder:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 70
    move-result v2

    .line 71
    :goto_2
    move/from16 v21, v2

    .line 73
    goto :goto_3

    .line 74
    :cond_5
    const/4 v2, -0x1

    .line 75
    goto :goto_2

    .line 76
    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->toProtoWakeReason(Lcom/android/server/biometrics/log/OperationContextExt;)I

    .line 79
    move-result v22

    .line 80
    invoke-static/range {p0 .. p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->toProtoWakeReasonDetails(Lcom/android/server/biometrics/log/OperationContextExt;)[I

    .line 83
    move-result-object v23

    .line 84
    const/4 v12, -0x1

    .line 85
    iget-boolean v0, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsMandatoryBiometrics:Z

    .line 87
    move/from16 v24, v0

    .line 89
    const/16 v2, 0x58

    .line 91
    move/from16 v3, p1

    .line 93
    move/from16 v4, p8

    .line 95
    move/from16 v6, p2

    .line 97
    move/from16 v7, p7

    .line 99
    move/from16 v8, p6

    .line 101
    move v0, v11

    .line 102
    move/from16 v11, p3

    .line 104
    move/from16 v17, v13

    .line 106
    move/from16 v13, p9

    .line 108
    move/from16 v16, v1

    .line 110
    move/from16 v18, v0

    .line 112
    invoke-static/range {v2 .. v24}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIZIJZIFIIZZIIIII[IZ)V

    .line 115
    return-void
.end method

.method public static error(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIII)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 5
    iget-boolean v5, v1, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    .line 7
    invoke-static/range {p5 .. p6}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sanitizeLatency(J)J

    .line 10
    move-result-wide v11

    .line 11
    iget-object v1, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 13
    iget v14, v1, Landroid/hardware/biometrics/common/OperationContext;->id:I

    .line 15
    iget-byte v2, v1, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v6, 0x2

    .line 20
    if-ne v2, v4, :cond_0

    .line 22
    move v15, v6

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-ne v2, v6, :cond_1

    .line 26
    move v15, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v15, v3

    .line 29
    :goto_0
    iget-boolean v1, v1, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    .line 31
    iget-boolean v10, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsDisplayOn:Z

    .line 33
    iget v9, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mDockState:I

    .line 35
    iget v2, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mOrientation:I

    .line 37
    invoke-static {v2}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->orientationType(I)I

    .line 40
    move-result v19

    .line 41
    iget v2, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mFoldState:I

    .line 43
    const/4 v7, 0x3

    .line 44
    if-eq v2, v4, :cond_4

    .line 46
    if-eq v2, v6, :cond_3

    .line 48
    if-eq v2, v7, :cond_2

    .line 50
    move/from16 v20, v3

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move/from16 v20, v6

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move/from16 v20, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    move/from16 v20, v7

    .line 61
    :goto_1
    iget-object v2, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    .line 63
    if-eqz v2, :cond_5

    .line 65
    iget-object v2, v2, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->mOrder:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 70
    move-result v2

    .line 71
    :goto_2
    move/from16 v21, v2

    .line 73
    goto :goto_3

    .line 74
    :cond_5
    const/4 v2, -0x1

    .line 75
    goto :goto_2

    .line 76
    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->toProtoWakeReason(Lcom/android/server/biometrics/log/OperationContextExt;)I

    .line 79
    move-result v22

    .line 80
    invoke-static/range {p0 .. p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->toProtoWakeReasonDetails(Lcom/android/server/biometrics/log/OperationContextExt;)[I

    .line 83
    move-result-object v23

    .line 84
    const/4 v13, -0x1

    .line 85
    iget-boolean v0, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsMandatoryBiometrics:Z

    .line 87
    move/from16 v24, v0

    .line 89
    const/16 v2, 0x59

    .line 91
    move/from16 v3, p1

    .line 93
    move/from16 v4, p9

    .line 95
    move/from16 v6, p2

    .line 97
    move/from16 v7, p3

    .line 99
    move/from16 v8, p7

    .line 101
    move v0, v9

    .line 102
    move/from16 v9, p8

    .line 104
    move/from16 v17, v10

    .line 106
    move/from16 v10, p4

    .line 108
    move/from16 v16, v1

    .line 110
    move/from16 v18, v0

    .line 112
    invoke-static/range {v2 .. v24}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZJIIIZZIIIII[IZ)V

    .line 115
    return-void
.end method

.method public static orientationType(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_3

    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v0, :cond_2

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v1, :cond_1

    .line 10
    if-eq p0, v0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x4

    .line 15
    return p0

    .line 16
    :cond_1
    return v0

    .line 17
    :cond_2
    return v1

    .line 18
    :cond_3
    return v0
.end method

.method public static sanitizeLatency(J)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p0, v0

    .line 5
    if-gez v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v1, "found a negative latency : "

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    const-string p1, "BiometricFrameworkStatsLogger"

    .line 24
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-wide/16 p0, -0x1

    .line 29
    :cond_0
    return-wide p0
.end method

.method public static toProtoWakeReason(Lcom/android/server/biometrics/log/OperationContextExt;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 3
    iget p0, p0, Landroid/hardware/biometrics/common/OperationContext;->wakeReason:I

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :pswitch_0
    const/16 p0, 0x9

    .line 12
    return p0

    .line 13
    :pswitch_1
    const/16 p0, 0x8

    .line 15
    return p0

    .line 16
    :pswitch_2
    const/4 p0, 0x7

    .line 17
    return p0

    .line 18
    :pswitch_3
    const/4 p0, 0x6

    .line 19
    return p0

    .line 20
    :pswitch_4
    const/4 p0, 0x5

    .line 21
    return p0

    .line 22
    :pswitch_5
    const/4 p0, 0x4

    .line 23
    return p0

    .line 24
    :pswitch_6
    const/4 p0, 0x3

    .line 25
    return p0

    .line 26
    :pswitch_7
    const/4 p0, 0x2

    .line 27
    return p0

    .line 28
    :pswitch_8
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toProtoWakeReasonDetails(Lcom/android/server/biometrics/log/OperationContextExt;)[I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 3
    iget-object p0, p0, Landroid/hardware/biometrics/common/OperationContext;->authenticateReason:Landroid/hardware/biometrics/common/AuthenticateReason;

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/AuthenticateReason;->getTag()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v1, v2, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/AuthenticateReason;->getFaceAuthenticateReason()I

    .line 19
    move-result p0

    .line 20
    packed-switch p0, :pswitch_data_0

    .line 23
    goto :goto_0

    .line 24
    :pswitch_0
    const/16 v0, 0xa

    .line 26
    goto :goto_0

    .line 27
    :pswitch_1
    const/16 v0, 0x9

    .line 29
    goto :goto_0

    .line 30
    :pswitch_2
    const/16 v0, 0x8

    .line 32
    goto :goto_0

    .line 33
    :pswitch_3
    const/4 v0, 0x7

    .line 34
    goto :goto_0

    .line 35
    :pswitch_4
    const/4 v0, 0x6

    .line 36
    goto :goto_0

    .line 37
    :pswitch_5
    const/4 v0, 0x5

    .line 38
    goto :goto_0

    .line 39
    :pswitch_6
    const/4 v0, 0x4

    .line 40
    goto :goto_0

    .line 41
    :pswitch_7
    const/4 v0, 0x3

    .line 42
    goto :goto_0

    .line 43
    :pswitch_8
    const/4 v0, 0x2

    .line 44
    goto :goto_0

    .line 45
    :pswitch_9
    move v0, v2

    .line 46
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 53
    move-result-object p0

    .line 54
    new-instance v0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda0;

    .line 56
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 62
    move-result-object p0

    .line 63
    new-instance v0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda1;

    .line 65
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    .line 71
    move-result-object p0

    .line 72
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
