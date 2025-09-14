.class public final Lcom/android/server/hdmi/HdmiCecController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EMPTY_BODY:[B


# instance fields
.field public mControlHandler:Landroid/os/Handler;

.field public final mHdmiCecAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

.field public mIoHandler:Landroid/os/Handler;

.field public mLogicalAddressAllocationDelay:J

.field public mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

.field public final mMessageHistoryLock:Ljava/lang/Object;

.field public final mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

.field public mPollDevicesDelay:J

.field public final mRemoteDeviceAddressPredicate:Lcom/android/server/hdmi/HdmiCecController$1;

.field public final mService:Lcom/android/server/hdmi/HdmiControlService;

.field public final mSystemAudioAddressPredicate:Lcom/android/server/hdmi/HdmiCecController$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    .line 3
    sput-object v0, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$1;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mRemoteDeviceAddressPredicate:Lcom/android/server/hdmi/HdmiCecController$1;

    .line 11
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$2;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mSystemAudioAddressPredicate:Lcom/android/server/hdmi/HdmiCecController$2;

    .line 18
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 20
    const/16 v1, 0xfa

    .line 22
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 25
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 27
    new-instance v0, Ljava/lang/Object;

    .line 29
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistoryLock:Ljava/lang/Object;

    .line 34
    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLogicalAddressAllocationDelay:J

    .line 38
    iput-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mPollDevicesDelay:J

    .line 40
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 42
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 44
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController;->mHdmiCecAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 46
    return-void
.end method

.method public static createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)V

    .line 6
    invoke-interface {p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeInit()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    new-array p0, p0, [Ljava/lang/Object;

    .line 15
    const-string p1, "Couldn\'t get tv.cec service."

    .line 17
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance p0, Landroid/os/Handler;

    .line 24
    iget-object p2, v0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 26
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->getIoLooper()Landroid/os/Looper;

    .line 29
    move-result-object v1

    .line 30
    invoke-direct {p0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    iput-object p0, v0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    .line 35
    new-instance p0, Landroid/os/Handler;

    .line 37
    iget-object p2, p2, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 39
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 42
    move-result-object p2

    .line 43
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    iput-object p0, v0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    .line 48
    new-instance p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 50
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    .line 53
    invoke-interface {p1, p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    .line 56
    return-object v0
.end method

.method public static isLanguage(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, Landroid/icu/util/ULocale$Builder;

    .line 13
    invoke-direct {v1}, Landroid/icu/util/ULocale$Builder;-><init>()V

    .line 16
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/icu/util/ULocale$Builder;->setLanguage(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    :try_end_0
    .catch Landroid/icu/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :catch_0
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final addEventToHistory(Lcom/android/server/hdmi/HdmiCecController$Dumpable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistoryLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 6
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 17
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 19
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final assertRunOnServiceThread()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    .line 7
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    move-result-object p0

    .line 11
    if-ne v0, p0, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 16
    const-string v0, "Should run on service thread."

    .line 18
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
.end method

.method public final enableCec(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    move-result-object v0

    .line 8
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "enableCec: %b"

    .line 15
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 20
    invoke-interface {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->enableCec(Z)V

    .line 23
    return-void
.end method

.method public final enableSystemCecControl(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    move-result-object v0

    .line 8
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "enableSystemCecControl: %b"

    .line 15
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 20
    invoke-interface {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->enableSystemCecControl(Z)V

    .line 23
    return-void
.end method

.method public final maySendFeatureAbortCommand(ILcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 5
    iget v1, p2, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 7
    const/16 v2, 0xf

    .line 9
    if-eq v1, v2, :cond_2

    .line 11
    iget v3, p2, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 13
    if-ne v3, v2, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget p2, p2, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 18
    if-nez p2, :cond_1

    .line 20
    return-void

    .line 21
    :cond_1
    and-int/lit16 p2, p2, 0xff

    .line 23
    int-to-byte p2, p2

    .line 24
    and-int/lit16 p1, p1, 0xff

    .line 26
    int-to-byte p1, p1

    .line 27
    const/4 v2, 0x2

    .line 28
    new-array v2, v2, [B

    .line 30
    aput-byte p2, v2, v0

    .line 32
    const/4 p2, 0x1

    .line 33
    aput-byte p1, v2, p2

    .line 35
    invoke-static {v1, v3, v0, v2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 42
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 45
    new-instance p2, Ljava/util/ArrayList;

    .line 47
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$7;

    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/hdmi/HdmiCecController$7;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecMessage;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 62
    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;

    .line 64
    invoke-direct {v1, v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;-><init>(ZLcom/android/server/hdmi/HdmiCecMessage;Ljava/util/List;)V

    .line 67
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecController;->addEventToHistory(Lcom/android/server/hdmi/HdmiCecController$Dumpable;)V

    .line 70
    :cond_2
    :goto_0
    return-void
.end method

.method public onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 13
    iget v1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 15
    const/16 v3, 0xa7

    .line 17
    if-eq v1, v3, :cond_0

    .line 19
    const/16 v3, 0xa8

    .line 21
    if-eq v1, v3, :cond_0

    .line 23
    const/16 v3, 0xf8

    .line 25
    if-eq v1, v3, :cond_0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    const-string v3, "Message "

    .line 31
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    const-string v3, " received when cec disabled"

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    new-array v3, v2, [Ljava/lang/Object;

    .line 48
    invoke-static {v1, v3}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 53
    if-eqz v1, :cond_2

    .line 55
    iget v1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 57
    const/16 v3, 0xf

    .line 59
    if-ne v1, v3, :cond_1

    .line 61
    const/4 v1, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v3, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 65
    invoke-virtual {v3, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->isAllocatedLocalDeviceAddress(I)Z

    .line 68
    move-result v1

    .line 69
    :goto_0
    if-nez v1, :cond_2

    .line 71
    return-void

    .line 72
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 75
    move-result v0

    .line 76
    const/4 v1, -0x2

    .line 77
    if-ne v0, v1, :cond_3

    .line 79
    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(ILcom/android/server/hdmi/HdmiCecMessage;)V

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const/4 v1, -0x1

    .line 84
    if-eq v0, v1, :cond_4

    .line 86
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(ILcom/android/server/hdmi/HdmiCecMessage;)V

    .line 89
    :cond_4
    :goto_1
    return-void
.end method

.method public final runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;JZ)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 4
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 10
    if-eqz p4, :cond_0

    .line 12
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "[P]:AllocatedAddress=%s"

    .line 22
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-interface/range {p4 .. p5}, Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;->onPollingFinished(Ljava/util/List;)V

    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    move-object v7, p2

    .line 31
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    move-object v4, v0

    .line 36
    check-cast v4, Ljava/lang/Integer;

    .line 38
    move-object v0, p0

    .line 39
    iget-object v11, v0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    .line 41
    new-instance v12, Lcom/android/server/hdmi/HdmiCecController$5;

    .line 43
    move-object v1, v12

    .line 44
    move-object v2, p0

    .line 45
    move v3, p1

    .line 46
    move/from16 v5, p3

    .line 48
    move-object/from16 v6, p5

    .line 50
    move-object/from16 v8, p4

    .line 52
    move-wide/from16 v9, p6

    .line 54
    invoke-direct/range {v1 .. v10}, Lcom/android/server/hdmi/HdmiCecController$5;-><init>(Lcom/android/server/hdmi/HdmiCecController;ILjava/lang/Integer;ILjava/util/List;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;J)V

    .line 57
    if-eqz p8, :cond_2

    .line 59
    move-wide/from16 v0, p6

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const-wide/16 v0, 0x0

    .line 64
    :goto_0
    invoke-virtual {v11, v12, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    return-void
.end method

.method public runOnIoThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;

    .line 5
    invoke-direct {v0, p1}, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method public runOnServiceThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;

    .line 5
    invoke-direct {v0, p1}, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method public final sendPollMessage(III)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    .line 7
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    move-result-object v1

    .line 11
    if-ne v0, v1, :cond_3

    .line 13
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    :goto_0
    if-ge v1, p3, :cond_2

    .line 17
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 19
    sget-object v3, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    .line 21
    invoke-interface {v2, p1, p2, v3}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSendCecCommand(II[B)I

    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x1

    .line 26
    if-nez v2, :cond_0

    .line 28
    return v3

    .line 29
    :cond_0
    if-eq v2, v3, :cond_1

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v3

    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v4

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v2

    .line 43
    filled-new-array {v3, v4, v2}, [Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    const-string v3, "Failed to send a polling message(%d->%d) with return code %d"

    .line 49
    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return v0

    .line 56
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 58
    const-string p1, "Should run on io thread."

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0
.end method

.method public setLogicalAddressAllocationDelay(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLogicalAddressAllocationDelay:J

    .line 3
    return-void
.end method

.method public setPollDevicesDelay(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mPollDevicesDelay:J

    .line 3
    return-void
.end method
