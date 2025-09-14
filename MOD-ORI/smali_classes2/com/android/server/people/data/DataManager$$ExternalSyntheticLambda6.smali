.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:Landroid/os/CancellationSignal;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/CancellationSignal;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/people/data/DataManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$1:Landroid/os/CancellationSignal;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/people/data/DataManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$1:Landroid/os/CancellationSignal;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$2:I

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/people/data/PackageData;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v2, v1, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    .line 24
    .line 25
    check-cast v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Lcom/android/server/people/data/EventHistoryImpl;

    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/android/server/people/data/EventHistoryImpl;->pruneOldEvents()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    monitor-exit v1

    .line 70
    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mIsDefaultDialerPredicate:Ljava/util/function/Predicate;

    .line 71
    .line 72
    iget-object v2, p1, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    const/4 v2, 0x2

    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Lcom/android/server/people/data/EventStore;->deleteEventHistories(I)V

    .line 84
    .line 85
    .line 86
    :cond_3
    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;

    .line 87
    .line 88
    iget-object v3, p1, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 89
    .line 90
    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const/4 v3, 0x3

    .line 95
    if-nez v1, :cond_4

    .line 96
    .line 97
    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Lcom/android/server/people/data/EventStore;->deleteEventHistories(I)V

    .line 100
    .line 101
    .line 102
    :cond_4
    new-instance v1, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;

    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    invoke-direct {v1, p1, v4}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/PackageData;I)V

    .line 106
    .line 107
    .line 108
    iget-object v4, p1, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 109
    .line 110
    const/4 v5, 0x0

    .line 111
    invoke-virtual {v4, v5, v1}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    .line 112
    .line 113
    .line 114
    new-instance v1, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;

    .line 115
    .line 116
    const/4 v5, 0x1

    .line 117
    invoke-direct {v1, p1, v5}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/PackageData;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v5, v1}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    .line 121
    .line 122
    .line 123
    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mIsDefaultDialerPredicate:Ljava/util/function/Predicate;

    .line 124
    .line 125
    iget-object v5, p1, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 126
    .line 127
    invoke-interface {v1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_5

    .line 132
    .line 133
    new-instance v1, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;

    .line 134
    .line 135
    const/4 v5, 0x2

    .line 136
    invoke-direct {v1, p1, v5}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/PackageData;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v2, v1}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;

    .line 143
    .line 144
    iget-object v2, p1, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 145
    .line 146
    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_6

    .line 151
    .line 152
    new-instance v1, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;

    .line 153
    .line 154
    const/4 v2, 0x3

    .line 155
    invoke-direct {v1, p1, v2}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/PackageData;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v3, v1}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    .line 159
    .line 160
    .line 161
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 162
    .line 163
    .line 164
    move-result-wide v1

    .line 165
    new-instance p1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;

    .line 166
    .line 167
    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/people/data/DataManager;J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, p0, p1}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    .line 171
    .line 172
    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 174
    .line 175
    .line 176
    move-result-wide v1

    .line 177
    new-instance p1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;

    .line 178
    .line 179
    invoke-direct {p1, v0, v1, v2, p0}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/people/data/DataManager;JI)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, p0, p1}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, p0}, Lcom/android/server/people/data/DataManager;->cleanupCachedShortcuts(I)V

    .line 186
    .line 187
    .line 188
    :goto_1
    return-void

    .line 189
    :goto_2
    monitor-exit v1

    .line 190
    throw p0
.end method
