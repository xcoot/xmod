.class public final Lcom/android/server/am/OomAdjusterDebugLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public final mOomAdjuster:Lcom/android/server/am/OomAdjuster;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 8
    return-void
.end method


# virtual methods
.method public final maybeLogStacktrace(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 3
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableProcStateStacktrace:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, ": "

    .line 10
    invoke-static {p1, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object p1

    .line 14
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 16
    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 18
    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    new-instance p1, Landroid/app/StackTrace;

    .line 31
    const-string v0, "Called here"

    .line 33
    invoke-direct {p1, v0}, Landroid/app/StackTrace;-><init>(Ljava/lang/String;)V

    .line 36
    const-string v0, "am_stack"

    .line 38
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    return-void
.end method

.method public final shouldLog(I)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    .line 5
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/16 v2, 0x8

    .line 15
    if-gt v0, v2, :cond_2

    .line 17
    move v2, v1

    .line 18
    :goto_0
    if-ge v2, v0, :cond_3

    .line 20
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 23
    move-result v3

    .line 24
    if-ne v3, p1, :cond_1

    .line 26
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 29
    move-result v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 37
    move-result v1

    .line 38
    :cond_3
    :goto_1
    return v1
.end method
