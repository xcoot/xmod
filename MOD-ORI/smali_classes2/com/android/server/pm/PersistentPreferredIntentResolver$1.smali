.class public final Lcom/android/server/pm/PersistentPreferredIntentResolver$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final createSnapshot()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>(Lcom/android/server/pm/PersistentPreferredIntentResolver;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
