.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    .line 1
    check-cast p1, Landroid/util/Pair;

    .line 2
    .line 3
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/people/data/ConversationInfo;

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 8
    .line 9
    iget-wide p0, p0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 10
    .line 11
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    return-wide p0
.end method
