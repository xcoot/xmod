.class public final synthetic Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget p0, p0, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/people/data/PackageData;

    .line 7
    .line 8
    iget-object p0, p1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationStore;->getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    .line 20
    .line 21
    check-cast v2, Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object p0, v0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->mConversationInfoFileName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, p0, v1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->saveImmediately(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p1

    .line 40
    :cond_0
    :goto_0
    iget-object p0, p1, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 41
    .line 42
    monitor-enter p0

    .line 43
    :try_start_2
    iget-object p1, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    .line 44
    .line 45
    check-cast p1, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/util/Map;

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lcom/android/server/people/data/EventHistoryImpl;

    .line 82
    .line 83
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 84
    :try_start_3
    iget-object v2, v1, Lcom/android/server/people/data/EventHistoryImpl;->mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    .line 85
    .line 86
    iget-object v3, v1, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    .line 87
    .line 88
    const-string/jumbo v4, "recent"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v4, v3}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->saveImmediately(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object v2, v1, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    .line 95
    .line 96
    iget-object v3, v1, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    .line 97
    .line 98
    const-string v4, "index"

    .line 99
    .line 100
    invoke-virtual {v2, v4, v3}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->saveImmediately(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    .line 102
    .line 103
    :try_start_4
    monitor-exit v1

    .line 104
    goto :goto_1

    .line 105
    :catchall_1
    move-exception p1

    .line 106
    monitor-exit v1

    .line 107
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 108
    :catchall_2
    move-exception p1

    .line 109
    goto :goto_2

    .line 110
    :cond_2
    monitor-exit p0

    .line 111
    return-void

    .line 112
    :goto_2
    monitor-exit p0

    .line 113
    throw p1

    .line 114
    :pswitch_0
    check-cast p1, Lcom/android/server/people/data/UserData;

    .line 115
    .line 116
    new-instance p0, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver$$ExternalSyntheticLambda0;

    .line 117
    .line 118
    const/4 v0, 0x1

    .line 119
    invoke-direct {p0, v0}, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p0}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
