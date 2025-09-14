.class public final Lcom/android/server/notification/NotificationTimeComparator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    .line 4
    .line 5
    iget-wide p0, p1, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    .line 6
    .line 7
    iget-wide v0, p2, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    .line 8
    .line 9
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    mul-int/lit8 p0, p0, -0x1

    .line 14
    .line 15
    return p0
.end method
