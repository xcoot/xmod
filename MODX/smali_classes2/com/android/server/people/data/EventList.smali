.class public final Lcom/android/server/people/data/EventList;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEvents:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final add(Lcom/android/server/people/data/Event;)V
    .locals 7

    .line 1
    iget-wide v0, p1, Lcom/android/server/people/data/Event;->mTimestamp:J

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/server/people/data/EventList;->firstIndexOnOrAfter(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    .line 8
    .line 9
    check-cast v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    .line 18
    .line 19
    check-cast v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/people/data/Event;

    .line 26
    .line 27
    iget-wide v1, v1, Lcom/android/server/people/data/Event;->mTimestamp:J

    .line 28
    .line 29
    iget-wide v3, p1, Lcom/android/server/people/data/Event;->mTimestamp:J

    .line 30
    .line 31
    cmp-long v1, v1, v3

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    .line 36
    .line 37
    check-cast v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    move v2, v0

    .line 44
    :goto_0
    if-ge v2, v1, :cond_1

    .line 45
    .line 46
    iget-object v5, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    .line 47
    .line 48
    check-cast v5, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Lcom/android/server/people/data/Event;

    .line 55
    .line 56
    iget-wide v5, v5, Lcom/android/server/people/data/Event;->mTimestamp:J

    .line 57
    .line 58
    cmp-long v5, v5, v3

    .line 59
    .line 60
    if-gtz v5, :cond_1

    .line 61
    .line 62
    iget-object v5, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    .line 63
    .line 64
    add-int/lit8 v6, v2, 0x1

    .line 65
    .line 66
    check-cast v5, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lcom/android/server/people/data/Event;

    .line 73
    .line 74
    iget v2, v2, Lcom/android/server/people/data/Event;->mType:I

    .line 75
    .line 76
    iget v5, p1, Lcom/android/server/people/data/Event;->mType:I

    .line 77
    .line 78
    if-ne v2, v5, :cond_0

    .line 79
    .line 80
    return-void

    .line 81
    :cond_0
    move v2, v6

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget-object p0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    .line 84
    .line 85
    check-cast p0, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final firstIndexOnOrAfter(J)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    .line 10
    .line 11
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-gt v2, v1, :cond_1

    .line 21
    .line 22
    add-int v3, v2, v1

    .line 23
    .line 24
    ushr-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    iget-object v4, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    .line 27
    .line 28
    check-cast v4, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lcom/android/server/people/data/Event;

    .line 35
    .line 36
    iget-wide v4, v4, Lcom/android/server/people/data/Event;->mTimestamp:J

    .line 37
    .line 38
    cmp-long v4, v4, p1

    .line 39
    .line 40
    if-ltz v4, :cond_0

    .line 41
    .line 42
    add-int/lit8 v0, v3, -0x1

    .line 43
    .line 44
    move v1, v0

    .line 45
    move v0, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    move v2, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return v0
.end method

.method public final removeOldEvents(J)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/EventList;->firstIndexOnOrAfter(J)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    .line 9
    .line 10
    check-cast p2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-ne p1, p2, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    .line 19
    .line 20
    check-cast p0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-ge p1, p2, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    .line 30
    .line 31
    move-object v2, v1

    .line 32
    check-cast v2, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/server/people/data/Event;

    .line 39
    .line 40
    check-cast v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    add-int/lit8 p1, p1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    if-le p2, v0, :cond_3

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    .line 53
    .line 54
    check-cast p0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p0, v0, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method
