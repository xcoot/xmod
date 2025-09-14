.class public final Lcom/android/server/usage/UserBroadcastEvents;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBroadcastEvents:Landroid/util/ArrayMap;


# virtual methods
.method public final clear(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    add-int/lit8 v2, v2, -0x1

    .line 24
    .line 25
    :goto_1
    if-ltz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/server/usage/BroadcastEvent;

    .line 32
    .line 33
    iget v3, v3, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    .line 34
    .line 35
    if-ne v3, p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-void
.end method
