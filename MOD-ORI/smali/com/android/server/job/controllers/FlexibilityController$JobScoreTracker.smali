.class public final Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCachedScore:I

.field public mCachedScoreExpirationTimeElapsed:J

.field public mScoreBucketIndex:I

.field public final mScoreBuckets:[Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x18

    .line 5
    .line 6
    new-array v0, v0, [Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBuckets:[Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBucketIndex:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final addScore(IJ)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBucketIndex:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBuckets:[Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    .line 4
    .line 5
    aget-object v2, v1, v0

    .line 6
    .line 7
    const-wide/32 v3, 0x5265c00

    .line 8
    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    new-instance v2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-wide p2, v2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    .line 18
    .line 19
    aput-object v2, v1, v0

    .line 20
    .line 21
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScoreExpirationTimeElapsed:J

    .line 22
    .line 23
    add-long/2addr p2, v3

    .line 24
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide p2

    .line 28
    iput-wide p2, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScoreExpirationTimeElapsed:J

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-wide v5, v2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    .line 32
    .line 33
    sub-long v3, p2, v3

    .line 34
    .line 35
    cmp-long v1, v5, v3

    .line 36
    .line 37
    if-gez v1, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput v0, v2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->score:I

    .line 41
    .line 42
    iput-wide p2, v2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    .line 43
    .line 44
    iput-wide p2, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScoreExpirationTimeElapsed:J

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-wide/32 v3, 0x36ee80

    .line 48
    .line 49
    .line 50
    sub-long v3, p2, v3

    .line 51
    .line 52
    cmp-long v1, v5, v3

    .line 53
    .line 54
    if-gez v1, :cond_2

    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    rem-int/lit8 v0, v0, 0x18

    .line 59
    .line 60
    iput v0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBucketIndex:I

    .line 61
    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->addScore(IJ)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    :goto_0
    iget p2, v2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->score:I

    .line 67
    .line 68
    add-int/2addr p2, p1

    .line 69
    iput p2, v2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->score:I

    .line 70
    .line 71
    iget p2, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScore:I

    .line 72
    .line 73
    add-int/2addr p2, p1

    .line 74
    iput p2, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScore:I

    .line 75
    .line 76
    return-void
.end method
