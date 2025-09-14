.class public final synthetic Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/util/SparseArrayMap$TriConsumer;


# instance fields
.field public final synthetic f$0:Landroid/util/IndentingPrintWriter;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Landroid/util/IndentingPrintWriter;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda0;->f$0:Landroid/util/IndentingPrintWriter;

    .line 6
    iput-wide p2, p0, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda0;->f$1:J

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda0;->f$0:Landroid/util/IndentingPrintWriter;

    .line 3
    iget-wide v1, p0, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda0;->f$1:J

    .line 5
    check-cast p2, Ljava/lang/String;

    .line 7
    check-cast p3, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;

    .line 9
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 12
    const-string p0, "/"

    .line 14
    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 20
    const-string p0, ": "

    .line 22
    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    const-string/jumbo p0, "{"

    .line 31
    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 34
    const/4 p0, 0x0

    .line 35
    move p1, p0

    .line 36
    :goto_0
    iget-object p2, p3, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBuckets:[Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    .line 38
    array-length v3, p2

    .line 39
    if-ge p0, v3, :cond_3

    .line 41
    iget v3, p3, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBucketIndex:I

    .line 43
    const/4 v4, 0x1

    .line 44
    add-int/2addr v3, v4

    .line 45
    add-int/2addr v3, p0

    .line 46
    array-length v5, p2

    .line 47
    rem-int/2addr v3, v5

    .line 48
    aget-object p2, p2, v3

    .line 50
    if-eqz p2, :cond_2

    .line 52
    iget-wide v5, p2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    .line 54
    const-wide/16 v7, 0x0

    .line 56
    cmp-long v3, v5, v7

    .line 58
    if-nez v3, :cond_0

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    if-eqz p1, :cond_1

    .line 63
    const-string p1, ", "

    .line 65
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 68
    :cond_1
    iget-wide v5, p2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    .line 70
    invoke-static {v5, v6, v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 73
    const-string p1, "="

    .line 75
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 78
    iget p1, p2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->score:I

    .line 80
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 83
    move p1, v4

    .line 84
    :cond_2
    :goto_1
    add-int/lit8 p0, p0, 0x1

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const-string/jumbo p0, "}"

    .line 90
    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 96
    return-void
.end method
