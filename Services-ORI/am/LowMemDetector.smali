.class public final Lcom/android/server/am/LowMemDetector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAvailable:Z

.field public mPressureState:I

.field public final mPressureStateLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$mwaitForPressure(Lcom/android/server/am/LowMemDetector;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/am/LowMemDetector;->waitForPressure()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/am/LowMemDetector$LowMemThread;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/android/server/am/LowMemDetector$LowMemThread;-><init>(Lcom/android/server/am/LowMemDetector;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/android/server/am/LowMemDetector;->init()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method private native init()I
.end method

.method private native waitForPressure()I
.end method
