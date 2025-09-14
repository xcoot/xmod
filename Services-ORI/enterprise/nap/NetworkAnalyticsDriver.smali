.class Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DBG:Z

.field public static REATTEMPT_COMMAND_ACTIVATE:I = 0x1

.field public static REATTEMPT_COMMAND_DEACTIVATE:I = 0x2

.field public static REATTEMPT_COMMAND_FREQUENCY:I = 0x5

.field public static final TAG:Ljava/lang/String; = "NetworkAnalytics:NetworkAnalyticsDriver"

.field public static mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;


# instance fields
.field public atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

.field public dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

.field public mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

.field public ncmVersion:Ljava/lang/String;

.field public stateOfFileDescriptor:Z

.field public stateOfIntervalSet:Z

.field public stateOfThread:Z

.field public syncObject:Ljava/lang/Object;

.field public test:Ljava/lang/String;

.field public versionMismatchCheck:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->DBG:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->syncObject:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfThread:Z

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfFileDescriptor:Z

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfIntervalSet:Z

    .line 26
    .line 27
    const-string/jumbo v0, "{ \"src\":\"10.10.12.12\", \"dst\":\"66.7.251.20\", \"sport\":\"5000\", \"dport\":\"443\", \"uid\":\"10197\", \"pid\":\"666\", \"bsent\":\"1400\", \"brecv\":\"4500\", \"hostname\":\"www.space.com\", \"protocol\":\"tcp\", \"hash\":\"a0627953\" }"

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->test:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 35
    .line 36
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    return-void
.end method

.method public static getInstance(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 11
    .line 12
    :cond_0
    sget-object p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public native activate(I)I
.end method

.method public beginDataRecording(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->activate(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-gez p1, :cond_1

    .line 11
    .line 12
    const-string p0, "NetworkAnalytics:NetworkAnalyticsDriver"

    .line 13
    .line 14
    const-string p1, "beginDataRecording: Activation ioctl failed."

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfIntervalSet:Z

    .line 22
    .line 23
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    new-array v1, v1, [Ljava/lang/Void;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfThread(Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public checkDataCollectionState()V
    .locals 0

    .line 1
    return-void
.end method

.method public native checkNcmVersion()I
.end method

.method public declared-synchronized checkNcmVersionMismatch()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->checkNcmVersion()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "NetworkAnalytics:NetworkAnalyticsDriver"

    .line 13
    .line 14
    const-string v1, "beginDataRecording: Mismatch between kernel and userspace npa version."

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/16 v0, -0x14

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return v0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    monitor-exit p0

    .line 45
    return v0

    .line 46
    :goto_0
    monitor-exit p0

    .line 47
    throw v0
.end method

.method public native closeDevice()I
.end method

.method public native deactivate()I
.end method

.method public endDataRecording()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 7
    .line 8
    iget v1, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    .line 9
    .line 10
    if-lez v1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfThread(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->deactivate()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const-string v2, "NetworkAnalytics:NetworkAnalyticsDriver"

    .line 29
    .line 30
    if-gez v1, :cond_2

    .line 31
    .line 32
    const-string/jumbo p0, "endDataRecording: Deactivation ioctl failed."

    .line 33
    .line 34
    .line 35
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfIntervalSet:Z

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->closeDevice()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-gez v1, :cond_3

    .line 46
    .line 47
    const-string/jumbo p0, "endDataRecording: closing of character device failed."

    .line 48
    .line 49
    .line 50
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfCharDevice(Z)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public native getNcmVersion()I
.end method

.method public jniSendingData(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public declared-synchronized openCharDevice(I)I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfFileDescriptor:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openDevice(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-gez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "NetworkAnalytics:NetworkAnalyticsDriver"

    .line 13
    .line 14
    const-string v0, "beginDataRecording: Opening of character device failed."

    .line 15
    .line 16
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    const/16 p0, -0x13

    .line 21
    .line 22
    return p0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x1

    .line 26
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfCharDevice(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->getNcmVersion()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    .line 42
    .line 43
    if-gez p1, :cond_2

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    .line 47
    .line 48
    const-string p1, "NetworkAnalytics:NetworkAnalyticsDriver"

    .line 49
    .line 50
    const-string v0, "beginDataRecording: Get npa version failed. Char device in open state."

    .line 51
    .line 52
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    monitor-exit p0

    .line 56
    const/4 p0, -0x1

    .line 57
    return p0

    .line 58
    :cond_2
    monitor-exit p0

    .line 59
    const/4 p0, 0x0

    .line 60
    return p0

    .line 61
    :goto_0
    monitor-exit p0

    .line 62
    throw p1
.end method

.method public native openDevice(I)I
.end method

.method public native readDevice()Ljava/lang/String;
.end method

.method public native setIntervalValue(I)I
.end method

.method public declared-synchronized setIntervalValueForFlow(I)I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfIntervalSet:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setIntervalValue(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-gez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "NetworkAnalytics:NetworkAnalyticsDriver"

    .line 13
    .line 14
    const-string v0, "beginDataRecording: set interval value failed. Char device in open state."

    .line 15
    .line 16
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    const/4 p0, -0x1

    .line 21
    return p0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    monitor-exit p0

    .line 25
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :goto_0
    monitor-exit p0

    .line 28
    throw p1
.end method

.method public final setStateOfCharDevice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfFileDescriptor:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setStateOfThread(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
