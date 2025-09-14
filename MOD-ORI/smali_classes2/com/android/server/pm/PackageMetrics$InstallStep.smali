.class public final Lcom/android/server/pm/PackageMetrics$InstallStep;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDurationMillis:J

.field public final mStartTimestampMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/android/server/pm/PackageMetrics$InstallStep;->mDurationMillis:J

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/PackageMetrics$InstallStep;->mStartTimestampMillis:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/android/server/pm/PackageMetrics$InstallStep;->mStartTimestampMillis:J

    .line 6
    iput-wide p1, p0, Lcom/android/server/pm/PackageMetrics$InstallStep;->mDurationMillis:J

    return-void
.end method
