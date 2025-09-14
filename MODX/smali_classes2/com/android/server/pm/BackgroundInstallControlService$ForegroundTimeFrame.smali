.class public final Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final activities:Ljava/util/Set;

.field public endTimeStampMillis:J

.field public final startTimeStampMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->startTimeStampMillis:J

    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    iput-wide p1, p0, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->endTimeStampMillis:J

    .line 9
    .line 10
    new-instance p1, Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->activities:Ljava/util/Set;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->startTimeStampMillis:J

    .line 4
    .line 5
    iget-wide v2, p1, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->startTimeStampMillis:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :goto_0
    return v0
.end method
