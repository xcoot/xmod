.class public final Lcom/android/server/am/ProcessList$ProcStateMemTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHighestMem:[I

.field public mPendingHighestMemState:I

.field public mPendingMemState:I

.field public mPendingScalingFactor:F

.field public final mScalingFactor:[F

.field public mTotalHighestMem:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x5

    .line 5
    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    .line 9
    new-array v1, v0, [F

    .line 11
    iput-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    .line 13
    const/4 v1, 0x4

    .line 14
    iput v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, v0, :cond_0

    .line 19
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    .line 21
    aput v0, v2, v1

    .line 23
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    .line 25
    const/high16 v3, 0x3f800000    # 1.0f

    .line 27
    aput v3, v2, v1

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 35
    return-void
.end method


# virtual methods
.method public final dumpLine(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    const-string v0, "best="

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 11
    const-string v0, " ("

    .line 13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    .line 17
    move v1, v0

    .line 18
    :goto_0
    const-string/jumbo v2, "x"

    .line 21
    const-string v3, " "

    .line 23
    const/4 v4, 0x5

    .line 24
    if-ge v0, v4, :cond_2

    .line 26
    iget-object v5, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    .line 28
    aget v6, v5, v0

    .line 30
    if-ge v6, v4, :cond_1

    .line 32
    if-eqz v1, :cond_0

    .line 34
    const-string v1, ", "

    .line 36
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 42
    const-string v1, "="

    .line 44
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    aget v1, v5, v0

    .line 49
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 52
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    .line 57
    aget v1, v1, v0

    .line 59
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 62
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x1

    .line 66
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const-string v0, ")"

    .line 71
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 76
    if-ltz v0, :cond_3

    .line 78
    const-string v0, " / pending state="

    .line 80
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 85
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 88
    const-string v0, " highest="

    .line 90
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    .line 95
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 98
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    iget p0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 103
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(F)V

    .line 106
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 112
    return-void
.end method
