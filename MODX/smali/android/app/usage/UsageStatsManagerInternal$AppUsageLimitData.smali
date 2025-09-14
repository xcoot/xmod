.class public final Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mTotalUsageLimit:J

.field public final mUsageRemaining:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mTotalUsageLimit:J

    .line 6
    iput-wide p3, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mUsageRemaining:J

    .line 8
    return-void
.end method
