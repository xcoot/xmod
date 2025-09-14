.class public final Lcom/android/server/trust/TrustArchive;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mEvents:Ljava/util/ArrayDeque;


# virtual methods
.method public final addEvent(Lcom/android/server/trust/TrustArchive$Event;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xc8

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
