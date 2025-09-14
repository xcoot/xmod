.class public final Lcom/android/server/biometrics/log/BiometricLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

.field public final mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

.field public mFirstAcquireTimeMs:J

.field public mShouldLogMetrics:Z

.field public final mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

.field public final mStatsAction:I

.field public final mStatsClient:I

.field public final mStatsModality:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/biometrics/log/BiometricLogger;->DEBUG:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(IIILcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Lcom/android/server/biometrics/AuthenticationStatsCollector;Landroid/hardware/SensorManager;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    .line 6
    iput p1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    .line 7
    iput p2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    .line 8
    iput p3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 9
    iput-object p4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 10
    iput-object p5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 11
    new-instance p1, Lcom/android/server/biometrics/log/ALSProbe;

    .line 12
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p4, 0x1

    .line 13
    invoke-virtual {p3, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    .line 14
    invoke-direct {p1, p6, p2, p3, p4}, Lcom/android/server/biometrics/log/ALSProbe;-><init>(Landroid/hardware/SensorManager;Landroid/os/Handler;J)V

    .line 15
    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V
    .locals 7

    .line 1
    sget-object v4, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sInstance:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    const-class v0, Landroid/hardware/SensorManager;

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/hardware/SensorManager;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(IIILcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Lcom/android/server/biometrics/AuthenticationStatsCollector;Landroid/hardware/SensorManager;)V

    return-void
.end method

.method public static ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/biometrics/log/BiometricLogger;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v0, v6

    .line 8
    move-object v1, p0

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method


# virtual methods
.method public final logOnEnrolled(IIZJ)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/android/server/biometrics/log/BiometricLogger;->DEBUG:Z

    .line 7
    .line 8
    const-string v1, "BiometricLogger"

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "Enrolled! Modality: "

    .line 15
    .line 16
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    .line 20
    .line 21
    const-string v3, ", User: "

    .line 22
    .line 23
    const-string v4, ", Client: "

    .line 24
    .line 25
    invoke-static {v2, p1, v3, v4, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 26
    .line 27
    .line 28
    iget v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ", Latency: "

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ", Lux: "

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 47
    .line 48
    iget v2, v2, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, ", Success: "

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "Enroll latency: "

    .line 72
    .line 73
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    return-void

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 94
    .line 95
    iget v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 98
    .line 99
    iget v8, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-static {p4, p5}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sanitizeLatency(J)J

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    const/4 v7, -0x1

    .line 109
    const/16 v1, 0xb8

    .line 110
    .line 111
    move v3, p1

    .line 112
    move v6, p3

    .line 113
    move v9, p2

    .line 114
    invoke-static/range {v1 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJZIFI)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final logOnError(Landroid/content/Context;Lcom/android/server/biometrics/log/OperationContextExt;III)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v9, p5

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-wide v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    cmp-long v1, v1, v3

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iget-wide v3, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    .line 22
    .line 23
    sub-long/2addr v1, v3

    .line 24
    :goto_0
    move-wide v5, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const-wide/16 v1, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :goto_1
    sget-boolean v1, Lcom/android/server/biometrics/log/BiometricLogger;->DEBUG:Z

    .line 30
    .line 31
    const-string v2, "BiometricLogger"

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "Error! Modality: "

    .line 38
    .line 39
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v3, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    .line 43
    .line 44
    const-string v4, ", User: "

    .line 45
    .line 46
    const-string v7, ", IsCrypto: "

    .line 47
    .line 48
    invoke-static {v3, v9, v4, v7, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 49
    .line 50
    .line 51
    move-object v3, p2

    .line 52
    iget-object v4, v3, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 53
    .line 54
    iget-boolean v4, v4, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    .line 55
    .line 56
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v4, ", Action: "

    .line 60
    .line 61
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v4, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v4, ", Client: "

    .line 70
    .line 71
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget v4, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 75
    .line 76
    const-string v7, ", Error: "

    .line 77
    .line 78
    const-string v8, ", VendorCode: "

    .line 79
    .line 80
    move v10, p3

    .line 81
    invoke-static {v4, p3, v7, v8, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 82
    .line 83
    .line 84
    move v8, p4

    .line 85
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v4, ", Latency: "

    .line 89
    .line 90
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    move-object v3, p2

    .line 105
    move v10, p3

    .line 106
    move v8, p4

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v4, "Error latency: "

    .line 110
    .line 111
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_3

    .line 129
    .line 130
    return-void

    .line 131
    :cond_3
    move-object v1, p1

    .line 132
    invoke-static {p1, v9}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    iget-object v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    iget v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    .line 142
    .line 143
    iget v2, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    .line 144
    .line 145
    iget v7, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 146
    .line 147
    move-object v0, p2

    .line 148
    move v3, v7

    .line 149
    move v7, p3

    .line 150
    move v8, p4

    .line 151
    move/from16 v9, p5

    .line 152
    .line 153
    invoke-static/range {v0 .. v9}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->error(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIII)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public final shouldSkipLogging()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 13
    :goto_1
    const-string v3, "BiometricLogger"

    .line 14
    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    const-string v1, "Unknown field detected: MODALITY_UNKNOWN, will not report metric"

    .line 18
    .line 19
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_2
    if-nez v0, :cond_3

    .line 23
    .line 24
    const-string v0, "Unknown field detected: ACTION_UNKNOWN, will not report metric"

    .line 25
    .line 26
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_3
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 30
    .line 31
    if-nez p0, :cond_4

    .line 32
    .line 33
    const-string p0, "Unknown field detected: CLIENT_UNKNOWN"

    .line 34
    .line 35
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_4
    return v2
.end method
