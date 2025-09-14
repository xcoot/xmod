.class public final synthetic Lcom/android/server/alarm/LazyAlarmStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/alarm/Alarm;

    .line 2
    .line 3
    iget-wide p0, p1, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 4
    .line 5
    return-wide p0
.end method
