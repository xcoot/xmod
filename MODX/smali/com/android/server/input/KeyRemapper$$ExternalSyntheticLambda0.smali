.class public final synthetic Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/KeyRemapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/KeyRemapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/KeyRemapper;

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/KeyRemapper;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_5

    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq v0, v3, :cond_2

    .line 15
    const/4 p1, 0x3

    .line 16
    if-eq v0, p1, :cond_0

    .line 18
    move v1, v2

    .line 19
    goto/16 :goto_7

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object p1, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 26
    invoke-virtual {p1}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    .line 29
    new-instance v2, Ljava/util/HashMap;

    .line 31
    iget-object p1, p1, Lcom/android/server/input/PersistentDataStore;->mKeyRemapping:Ljava/util/Map;

    .line 33
    invoke-direct {v2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 36
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p1

    .line 44
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/lang/Integer;

    .line 56
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 59
    move-result v2

    .line 60
    iget-object v3, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 62
    invoke-virtual {v3, v2}, Lcom/android/server/input/PersistentDataStore;->clearMappedKey(I)V

    .line 65
    invoke-virtual {p0, v2, v2}, Lcom/android/server/input/KeyRemapper;->addKeyRemapping(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 73
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 76
    monitor-exit v0

    .line 77
    goto/16 :goto_7

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    goto :goto_2

    .line 81
    :goto_1
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 83
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 86
    throw p1

    .line 87
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    throw p0

    .line 89
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 91
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 93
    invoke-virtual {p0, v0, p1}, Lcom/android/server/input/KeyRemapper;->addKeyRemapping(II)V

    .line 96
    iget-object v3, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 98
    monitor-enter v3

    .line 99
    if-ne v0, p1, :cond_3

    .line 101
    :try_start_2
    iget-object p1, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 103
    invoke-virtual {p1, v0}, Lcom/android/server/input/PersistentDataStore;->clearMappedKey(I)V

    .line 106
    goto :goto_3

    .line 107
    :catchall_2
    move-exception p1

    .line 108
    goto :goto_4

    .line 109
    :cond_3
    iget-object v2, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 111
    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    .line 114
    iget-object v4, v2, Lcom/android/server/input/PersistentDataStore;->mKeyRemapping:Ljava/util/Map;

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object v5

    .line 120
    const/4 v6, -0x1

    .line 121
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    move-result-object v6

    .line 125
    check-cast v4, Ljava/util/HashMap;

    .line 127
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-result-object v4

    .line 131
    check-cast v4, Ljava/lang/Integer;

    .line 133
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 136
    move-result v4

    .line 137
    if-ne v4, p1, :cond_4

    .line 139
    goto :goto_3

    .line 140
    :cond_4
    iget-object v4, v2, Lcom/android/server/input/PersistentDataStore;->mKeyRemapping:Ljava/util/Map;

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    move-result-object v0

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    move-result-object p1

    .line 150
    check-cast v4, Ljava/util/HashMap;

    .line 152
    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iput-boolean v1, v2, Lcom/android/server/input/PersistentDataStore;->mDirty:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 157
    :goto_3
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 159
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 162
    monitor-exit v3

    .line 163
    goto :goto_7

    .line 164
    :catchall_3
    move-exception p0

    .line 165
    goto :goto_5

    .line 166
    :goto_4
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 168
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 171
    throw p1

    .line 172
    :goto_5
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 173
    throw p0

    .line 174
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 176
    check-cast p1, [I

    .line 178
    array-length v0, p1

    .line 179
    :goto_6
    if-ge v2, v0, :cond_6

    .line 181
    aget v3, p1, v2

    .line 183
    invoke-virtual {p0, v3}, Lcom/android/server/input/KeyRemapper;->onInputDeviceAdded(I)V

    .line 186
    add-int/lit8 v2, v2, 0x1

    .line 188
    goto :goto_6

    .line 189
    :cond_6
    :goto_7
    return v1
.end method
