.class public final synthetic Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/hint/HintManagerService$MyUidObserver;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    const-string v1, "Uid gone for "

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    iget-object v3, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->mProcStatesCache:Landroid/util/SparseIntArray;

    .line 13
    .line 14
    invoke-virtual {v3, p0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 15
    .line 16
    .line 17
    iget-object v3, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 18
    .line 19
    iget-object v3, v3, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/util/ArrayMap;

    .line 30
    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    monitor-exit v2

    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :cond_0
    const-string v4, "HintManagerService"

    .line 40
    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/lit8 v1, v1, -0x1

    .line 61
    .line 62
    :goto_0
    if-ltz v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Landroid/util/ArraySet;

    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    add-int/lit8 v5, v5, -0x1

    .line 75
    .line 76
    :goto_1
    if-ltz v5, :cond_1

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    check-cast v6, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 83
    .line 84
    invoke-virtual {v6}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->close()V

    .line 85
    .line 86
    .line 87
    add-int/lit8 v5, v5, -0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iget-object v1, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 95
    .line 96
    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    .line 97
    .line 98
    monitor-enter v1

    .line 99
    :try_start_1
    iget-object v2, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 100
    .line 101
    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    .line 102
    .line 103
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Ljava/util/TreeMap;

    .line 112
    .line 113
    if-eqz v2, :cond_4

    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_3

    .line 128
    .line 129
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Ljava/util/Map$Entry;

    .line 134
    .line 135
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    .line 140
    .line 141
    invoke-virtual {v3}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->closeChannel()V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :catchall_1
    move-exception p0

    .line 146
    goto :goto_4

    .line 147
    :cond_3
    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 148
    .line 149
    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    .line 150
    .line 151
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    :cond_4
    monitor-exit v1

    .line 159
    :goto_3
    return-void

    .line 160
    :goto_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    throw p0

    .line 162
    :goto_5
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    throw p0
.end method
