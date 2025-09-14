.class public final Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLastComputed:J

.field public final mResult:I

.field public final mTimestamp:J


# direct methods
.method public constructor <init>(JIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mLastComputed:J

    .line 6
    iput p3, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mResult:I

    .line 8
    iput-wide p4, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mTimestamp:J

    .line 10
    return-void
.end method
