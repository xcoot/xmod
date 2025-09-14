.class public final Lcom/android/server/people/data/EventHistoryImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/people/data/EventHistory;


# instance fields
.field public final mEventIndexArray:Landroid/util/SparseArray;

.field public final mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

.field public final mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

.field public final mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

.field public mLastPruneTime:J

.field public final mRecentEvents:Lcom/android/server/people/data/EventList;

.field public final mRootDir:Ljava/io/File;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/android/server/people/data/EventHistoryImpl$Injector;Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/people/data/EventList;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/server/people/data/EventList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/android/server/people/data/EventHistoryImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mLastPruneTime:J

    .line 30
    .line 31
    iput-object p2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRootDir:Ljava/io/File;

    .line 32
    .line 33
    new-instance p1, Ljava/io/File;

    .line 34
    .line 35
    const-string v0, "events"

    .line 36
    .line 37
    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-direct {v0, p1, p3, v1}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    .line 50
    .line 51
    new-instance p1, Ljava/io/File;

    .line 52
    .line 53
    const-string v0, "indexes"

    .line 54
    .line 55
    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance p2, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-direct {p2, p1, p3, v0}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 65
    .line 66
    .line 67
    iput-object p2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    .line 68
    .line 69
    return-void
.end method

.method public static eventHistoriesImplFromDisk(Lcom/android/server/people/data/EventHistoryImpl$Injector;Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/Map;
    .locals 6

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-direct {v1, v2}, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    array-length v1, p1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_2

    .line 22
    .line 23
    aget-object v3, p1, v2

    .line 24
    .line 25
    new-instance v4, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda1;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    array-length v4, v4

    .line 37
    const/4 v5, 0x2

    .line 38
    if-ne v4, v5, :cond_1

    .line 39
    .line 40
    new-instance v4, Lcom/android/server/people/data/EventHistoryImpl;

    .line 41
    .line 42
    invoke-direct {v4, p0, v3, p2}, Lcom/android/server/people/data/EventHistoryImpl;-><init>(Lcom/android/server/people/data/EventHistoryImpl$Injector;Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/android/server/people/data/EventHistoryImpl;->loadFromDisk()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized addEvent(Lcom/android/server/people/data/Event;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/people/data/EventHistoryImpl;->pruneOldEvents()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/EventHistoryImpl;->addEventInMemory(Lcom/android/server/people/data/Event;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    .line 11
    .line 12
    const-string/jumbo v1, "recent"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->scheduleSave(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    .line 21
    .line 22
    const-string v1, "index"

    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->scheduleSave(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0

    .line 31
    throw p1
.end method

.method public final declared-synchronized addEventInMemory(Lcom/android/server/people/data/Event;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    .line 3
    .line 4
    iget v1, p1, Lcom/android/server/people/data/Event;->mType:I

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/server/people/data/EventIndex;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/android/server/people/data/EventIndex;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/android/server/people/data/EventIndex;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    .line 25
    .line 26
    iget v2, p1, Lcom/android/server/people/data/Event;->mType:I

    .line 27
    .line 28
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    iget-wide v1, p1, Lcom/android/server/people/data/Event;->mTimestamp:J

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/EventIndex;->addEvent(J)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/android/server/people/data/EventList;->add(Lcom/android/server/people/data/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit p0

    .line 47
    throw p1
.end method

.method public final declared-synchronized getEventIndex(I)Lcom/android/server/people/data/EventIndex;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/people/data/EventIndex;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/android/server/people/data/EventIndex;

    invoke-direct {v0, p1}, Lcom/android/server/people/data/EventIndex;-><init>(Lcom/android/server/people/data/EventIndex;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v0, Lcom/android/server/people/data/EventIndex;

    invoke-direct {v0}, Lcom/android/server/people/data/EventIndex;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;
    .locals 3

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Lcom/android/server/people/data/EventIndex;

    invoke-direct {v0}, Lcom/android/server/people/data/EventIndex;-><init>()V

    .line 7
    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/EventIndex;

    if-eqz v1, :cond_0

    .line 9
    invoke-static {v0, v1}, Lcom/android/server/people/data/EventIndex;->combine(Lcom/android/server/people/data/EventIndex;Lcom/android/server/people/data/EventIndex;)Lcom/android/server/people/data/EventIndex;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 10
    :cond_1
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadFromDisk()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    .line 4
    new-instance v1, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {v1, p0}, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/EventHistoryImpl;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
    throw v0
.end method

.method public final declared-synchronized onDestroy()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    .line 10
    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    .line 17
    .line 18
    const-string/jumbo v1, "recent"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->delete(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    .line 25
    .line 26
    const-string v1, "index"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->delete(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRootDir:Ljava/io/File;

    .line 32
    .line 33
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    monitor-exit p0

    .line 40
    throw v0
.end method

.method public final declared-synchronized pruneOldEvents()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mLastPruneTime:J

    .line 12
    .line 13
    sub-long v2, v0, v2

    .line 14
    .line 15
    const-wide/32 v4, 0xdbba0

    .line 16
    .line 17
    .line 18
    cmp-long v2, v2, v4

    .line 19
    .line 20
    if-lez v2, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    .line 23
    .line 24
    const-wide/32 v3, 0xdbba00

    .line 25
    .line 26
    .line 27
    sub-long v3, v0, v3

    .line 28
    .line 29
    invoke-virtual {v2, v3, v4}, Lcom/android/server/people/data/EventList;->removeOldEvents(J)V

    .line 30
    .line 31
    .line 32
    iput-wide v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mLastPruneTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit p0

    .line 40
    throw v0
.end method
