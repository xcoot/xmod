.class public final Lcom/android/server/SEAMService;
.super Lcom/samsung/android/knox/seams/ISEAMS$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static SELF_PID:I

.field public static final mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mSKHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/android/server/SEAMService;->mLock:Ljava/lang/Object;

    .line 9
    new-instance v0, Landroid/os/Handler;

    .line 11
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/server/SEAMService;->mSKHandler:Landroid/os/Handler;

    .line 16
    iput-object p1, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    .line 18
    const-string p1, "SEAMService"

    .line 20
    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Lcom/android/server/SEAMService$BrHandler;

    .line 26
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    new-instance p1, Lcom/android/server/SEAMService$1;

    .line 35
    invoke-direct {p1, p0}, Lcom/android/server/SEAMService$1;-><init>(Lcom/android/server/SEAMService;)V

    .line 38
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 41
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 44
    move-result p0

    .line 45
    sput p0, Lcom/android/server/SEAMService;->SELF_PID:I

    .line 47
    return-void
.end method


# virtual methods
.method public final isAuthorized(IILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    sget v0, Lcom/android/server/SEAMService;->SELF_PID:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p1, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()V

    .line 10
    sget-boolean v0, Lcom/android/server/ServiceKeeper;->isActive:Z

    .line 12
    if-nez v0, :cond_2

    .line 14
    sget-boolean p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    .line 16
    if-eqz p0, :cond_1

    .line 18
    sget-object p0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    const-string p0, "SEAMService"

    .line 25
    const-string p1, "Returning 0 directly as tables are not ready in SK."

    .line 27
    invoke-static {p0, p1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_1
    return v1

    .line 31
    :cond_2
    iget-object p0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {p1, p2, p0, p3, p4}, Lcom/android/server/ServiceKeeper;->isAuthorized(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    move-result p0

    .line 37
    return p0
.end method
