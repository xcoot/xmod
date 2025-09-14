.class public final Lcom/android/server/isrb/IsrbManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIsrbManagerServiceImpl:Lcom/android/server/isrb/IsrbManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 6
    invoke-direct {v0}, Lcom/samsung/android/isrb/IIsrbManager$Stub;-><init>()V

    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mSystemReady:Z

    .line 12
    iput-boolean v1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mBootComplete:Z

    .line 14
    iput-boolean v1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsSystemErrPopup:Z

    .line 16
    iput-boolean v1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsNetworkReady:Z

    .line 18
    iput v1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mErrAlertNum:I

    .line 20
    iput v1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I

    .line 22
    iput v1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsDate:I

    .line 24
    iput v1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsMonth:I

    .line 26
    iput v1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsYear:I

    .line 28
    iput-object p1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/android/server/isrb/IsrbManagerService;->mIsrbManagerServiceImpl:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 32
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 4

    .line 1
    const/16 v0, 0x258

    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerService;->mIsrbManagerServiceImpl:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 6
    if-ne p1, v0, :cond_1

    .line 8
    iget-boolean p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mSystemReady:Z

    .line 10
    if-nez p1, :cond_0

    .line 12
    iput-boolean v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mSystemReady:Z

    .line 14
    :cond_0
    new-instance p1, Landroid/os/HandlerThread;

    .line 16
    const-string v0, "MessageISRBThread"

    .line 18
    const/16 v1, 0xa

    .line 20
    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 23
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 26
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mLooper:Landroid/os/Looper;

    .line 32
    new-instance p1, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    .line 34
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mLooper:Landroid/os/Looper;

    .line 36
    invoke-direct {p1, p0, v0}, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;-><init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;Landroid/os/Looper;)V

    .line 39
    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/16 v0, 0x3e8

    .line 44
    if-ne p1, v0, :cond_3

    .line 46
    iget-boolean p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mBootComplete:Z

    .line 48
    if-nez p1, :cond_2

    .line 50
    iput-boolean v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mBootComplete:Z

    .line 52
    :cond_2
    const-string/jumbo p1, "persist.sys.enable_isrb"

    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_3

    .line 62
    iget-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    .line 64
    const/4 v0, 0x3

    .line 65
    const-wide/16 v2, 0x1f4

    .line 67
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 70
    const-string p1, "IsrbManagerServiceImpl"

    .line 72
    const-string v0, "PROP_ENABLE_ISRB:disable"

    .line 74
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    .line 79
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 82
    move-result-object p1

    .line 83
    const-wide/32 v0, 0xafc8

    .line 86
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 89
    :cond_3
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "isrb"

    .line 4
    iget-object v1, p0, Lcom/android/server/isrb/IsrbManagerService;->mIsrbManagerServiceImpl:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    return-void
.end method
