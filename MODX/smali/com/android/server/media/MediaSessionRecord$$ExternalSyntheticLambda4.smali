.class public final synthetic Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaSessionRecord;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaSessionRecord;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/media/MediaSessionRecord;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;->f$1:Z

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;->f$1:Z

    .line 5
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    if-eqz p0, :cond_4

    .line 12
    invoke-static {}, Lcom/android/media/flags/Flags;->enableNotifyingActivityManagerWithMediaSessionStatusChange()Z

    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, v1, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    .line 25
    move-result v2

    .line 26
    iget-object v3, v1, Lcom/android/server/media/MediaSessionService;->mUserEngagedSessionsForFgs:Ljava/util/Map;

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v4

    .line 32
    new-instance v5, Ljava/util/HashSet;

    .line 34
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 37
    check-cast v3, Ljava/util/HashMap;

    .line 39
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v3, v1, Lcom/android/server/media/MediaSessionService;->mUserEngagedSessionsForFgs:Ljava/util/Map;

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v2

    .line 48
    check-cast v3, Ljava/util/HashMap;

    .line 50
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/util/Set;

    .line 56
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    :goto_0
    const-string p0, "MediaSessionService"

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v3, "startFgsIfSessionIsLinkedToNotification: record="

    .line 67
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Lcom/android/media/flags/Flags;->enableNotifyingActivityManagerWithMediaSessionStatusChange()Z

    .line 83
    move-result p0

    .line 84
    if-nez p0, :cond_1

    .line 86
    goto/16 :goto_3

    .line 88
    :cond_1
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 90
    monitor-enter v2

    .line 91
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    .line 94
    move-result p0

    .line 95
    iget-object v3, v1, Lcom/android/server/media/MediaSessionService;->mMediaNotifications:Ljava/util/Map;

    .line 97
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object p0

    .line 101
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    .line 104
    move-result-object v4

    .line 105
    check-cast v3, Ljava/util/HashMap;

    .line 107
    invoke-virtual {v3, p0, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    move-result-object p0

    .line 111
    check-cast p0, Ljava/util/Set;

    .line 113
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 116
    move-result-object p0

    .line 117
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_3

    .line 123
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Landroid/app/Notification;

    .line 129
    invoke-virtual {v0, v3}, Lcom/android/server/media/MediaSessionRecord;->isLinkedToNotification(Landroid/app/Notification;)Z

    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_2

    .line 135
    invoke-virtual {v1, v0}, Lcom/android/server/media/MediaSessionService;->startFgsDelegateLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 138
    monitor-exit v2

    .line 139
    goto :goto_3

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    goto :goto_1

    .line 142
    :cond_3
    monitor-exit v2

    .line 143
    goto :goto_3

    .line 144
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    throw p0

    .line 146
    :catchall_1
    move-exception v0

    .line 147
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    throw v0

    .line 149
    :cond_4
    invoke-static {}, Lcom/android/media/flags/Flags;->enableNotifyingActivityManagerWithMediaSessionStatusChange()Z

    .line 152
    move-result p0

    .line 153
    if-nez p0, :cond_5

    .line 155
    goto :goto_2

    .line 156
    :cond_5
    iget-object p0, v1, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 158
    monitor-enter p0

    .line 159
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    .line 162
    move-result v2

    .line 163
    iget-object v3, v1, Lcom/android/server/media/MediaSessionService;->mUserEngagedSessionsForFgs:Ljava/util/Map;

    .line 165
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    move-result-object v4

    .line 169
    check-cast v3, Ljava/util/HashMap;

    .line 171
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    move-result-object v3

    .line 175
    check-cast v3, Ljava/util/Set;

    .line 177
    if-nez v3, :cond_6

    .line 179
    monitor-exit p0

    .line 180
    goto :goto_2

    .line 181
    :catchall_2
    move-exception v0

    .line 182
    goto :goto_4

    .line 183
    :cond_6
    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_7

    .line 192
    iget-object v3, v1, Lcom/android/server/media/MediaSessionService;->mUserEngagedSessionsForFgs:Ljava/util/Map;

    .line 194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    move-result-object v2

    .line 198
    check-cast v3, Ljava/util/HashMap;

    .line 200
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 204
    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/server/media/MediaSessionService;->stopFgsIfNoSessionIsLinkedToNotification(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 207
    :goto_3
    return-void

    .line 208
    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 209
    throw v0
.end method
