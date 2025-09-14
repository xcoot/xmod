.class public final synthetic Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/pmm/DmaBufLeakDetector;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/pmm/DmaBufLeakDetector;JLandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;->f$1:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getLargestDmaBufProcess()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isCameraRunning()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_2

    .line 20
    .line 21
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getDmaBufSizeKb()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    long-to-float v3, v3

    .line 26
    invoke-virtual {v1, v3}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->hasLeak(F)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-wide v3, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;->f$1:J

    .line 34
    .line 35
    iput-wide v3, v1, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLastLeakTime:J

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    iput-boolean p0, v1, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsReporting:Z

    .line 39
    .line 40
    new-instance p0, Ljava/lang/Thread;

    .line 41
    .line 42
    new-instance v3, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda3;

    .line 43
    .line 44
    invoke-direct {v3, v1, v0, v2}, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/pmm/DmaBufLeakDetector;Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "DmaBufLeakDetector"

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 59
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method
