.class public final synthetic Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActiveServices;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActiveServices;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/ActiveServices;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;->f$1:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/ActiveServices;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;->f$1:I

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;->f$2:Z

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 13
    .line 14
    if-ne v2, v1, :cond_3

    .line 15
    .line 16
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 17
    .line 18
    iget v2, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    if-le v2, v3, :cond_2

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x5

    .line 26
    if-gt v2, p0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    iget-boolean p0, p0, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundForegroundServiceStartsPermission:Z

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    const/16 p0, 0x3d

    .line 38
    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-wide p0, v1, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    .line 45
    .line 46
    const-wide/16 v1, 0x0

    .line 47
    .line 48
    cmp-long v1, p0, v1

    .line 49
    .line 50
    if-lez v1, :cond_3

    .line 51
    .line 52
    const-wide v1, 0x7fffffffffffffffL

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    cmp-long v1, p0, v1

    .line 58
    .line 59
    if-gez v1, :cond_3

    .line 60
    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    sub-long/2addr v1, p0

    .line 66
    iget-object p0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 69
    .line 70
    iget-wide p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    .line 71
    .line 72
    cmp-long p0, v1, p0

    .line 73
    .line 74
    if-gez p0, :cond_3

    .line 75
    .line 76
    const/16 p0, 0x43

    .line 77
    .line 78
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    :goto_0
    invoke-static {v2}, Landroid/os/PowerExemptionManager;->getReasonCodeFromProcState(I)I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    const/4 p0, 0x0

    .line 93
    :goto_1
    return-object p0
.end method
