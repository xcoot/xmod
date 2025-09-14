.class public final synthetic Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/EventHistoryImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/EventHistoryImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/EventHistoryImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/EventHistoryImpl;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    .line 5
    .line 6
    const-string/jumbo v1, "recent"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->read(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/server/people/data/EventList;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    const-wide/32 v3, 0xdbba00

    .line 27
    .line 28
    .line 29
    sub-long/2addr v1, v3

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/EventList;->removeOldEvents(J)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/android/server/people/data/Event;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/android/server/people/data/EventList;->add(Lcom/android/server/people/data/Event;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto :goto_2

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    .line 67
    .line 68
    const-string v1, "index"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->read(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/util/SparseArray;

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-ge v1, v2, :cond_1

    .line 84
    .line 85
    iget-object v2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Lcom/android/server/people/data/EventIndex;

    .line 96
    .line 97
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    add-int/lit8 v1, v1, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    monitor-exit p0

    .line 104
    return-void

    .line 105
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    throw v0
.end method
