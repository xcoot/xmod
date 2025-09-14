.class public final synthetic Lcom/android/server/backup/transport/TransportStats$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lcom/android/server/backup/transport/TransportStats$Stats;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/backup/transport/TransportStats$Stats;

    .line 4
    .line 5
    new-instance p0, Lcom/android/server/backup/transport/TransportStats$Stats;

    .line 6
    .line 7
    iget v0, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    .line 8
    .line 9
    iget v1, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    .line 10
    .line 11
    add-int v2, v0, v1

    .line 12
    .line 13
    iget-wide v3, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    .line 14
    .line 15
    int-to-double v5, v0

    .line 16
    mul-double/2addr v3, v5

    .line 17
    iget-wide v5, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    .line 18
    .line 19
    int-to-double v0, v1

    .line 20
    mul-double/2addr v5, v0

    .line 21
    add-double/2addr v5, v3

    .line 22
    int-to-double v0, v2

    .line 23
    div-double/2addr v5, v0

    .line 24
    iget-wide v0, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    .line 25
    .line 26
    iget-wide v3, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    .line 27
    .line 28
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iget-wide v3, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    .line 33
    .line 34
    iget-wide p1, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    .line 35
    .line 36
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 37
    .line 38
    .line 39
    move-result-wide p1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iput v2, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    .line 44
    .line 45
    iput-wide v5, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    .line 46
    .line 47
    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    .line 48
    .line 49
    iput-wide p1, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    .line 50
    .line 51
    return-object p0
.end method
