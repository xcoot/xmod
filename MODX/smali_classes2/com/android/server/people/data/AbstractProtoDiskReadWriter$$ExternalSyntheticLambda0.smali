.class public final synthetic Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/AbstractProtoDiskReadWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/AbstractProtoDiskReadWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/AbstractProtoDiskReadWriter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/AbstractProtoDiskReadWriter;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    .line 5
    .line 6
    check-cast v0, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    .line 22
    .line 23
    check-cast v0, Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    .line 46
    .line 47
    check-cast v3, Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {p0, v2, v3}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->writeTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    .line 58
    .line 59
    check-cast v0, Landroid/util/ArrayMap;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    monitor-exit p0

    .line 67
    :goto_1
    return-void

    .line 68
    :goto_2
    monitor-exit p0

    .line 69
    throw v0
.end method
