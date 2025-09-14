.class public final Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mApiCallNumber:I

.field public final mApiCalls:[Ljava/lang/String;

.field public mCurr:I

.field public final mSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    new-array v1, v0, [Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCalls:[Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mCurr:I

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mSize:I

    .line 14
    .line 15
    iput v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCallNumber:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final declared-synchronized addApiCall(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCalls:[Ljava/lang/String;

    .line 3
    .line 4
    iget v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mCurr:I

    .line 5
    .line 6
    aput-object p1, v0, v1

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    iput v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mCurr:I

    .line 11
    .line 12
    iget p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mSize:I

    .line 13
    .line 14
    rem-int/2addr v1, p1

    .line 15
    iput v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mCurr:I

    .line 16
    .line 17
    iget p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCallNumber:I

    .line 18
    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCallNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0

    .line 27
    throw p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, ""

    .line 3
    .line 4
    iget v1, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCallNumber:I

    .line 5
    .line 6
    iget v2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mSize:I

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-le v1, v2, :cond_0

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v3

    .line 14
    :goto_0
    iget v2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mSize:I

    .line 15
    .line 16
    if-ge v3, v2, :cond_2

    .line 17
    .line 18
    iget v4, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mCurr:I

    .line 19
    .line 20
    add-int/2addr v4, v3

    .line 21
    rem-int/2addr v4, v2

    .line 22
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCalls:[Ljava/lang/String;

    .line 23
    .line 24
    aget-object v2, v2, v4

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, "#%-5d %s\n"

    .line 37
    .line 38
    add-int/lit8 v5, v1, 0x1

    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator$RingBuffer;->mApiCalls:[Ljava/lang/String;

    .line 45
    .line 46
    aget-object v4, v6, v4

    .line 47
    .line 48
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    move v1, v5

    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    monitor-exit p0

    .line 71
    return-object v0

    .line 72
    :goto_2
    monitor-exit p0

    .line 73
    throw v0
.end method
