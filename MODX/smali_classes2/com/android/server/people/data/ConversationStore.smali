.class public final Lcom/android/server/people/data/ConversationStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContactUriToShortcutIdMap:Ljava/util/Map;

.field public final mConversationInfoMap:Ljava/util/Map;

.field public mConversationInfosProtoDiskReadWriter:Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

.field public final mLocusIdToShortcutIdMap:Ljava/util/Map;

.field public final mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

.field public final mPackageDir:Ljava/io/File;

.field public final mPhoneNumberToShortcutIdMap:Ljava/util/Map;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    .line 24
    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    .line 31
    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/android/server/people/data/ConversationStore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/people/data/ConversationStore;->mPackageDir:Ljava/io/File;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final forAllConversations(Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    .line 5
    .line 6
    check-cast v1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/server/people/data/ConversationInfo;

    .line 31
    .line 32
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void

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
.end method

.method public final declared-synchronized getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    .line 5
    .line 6
    check-cast v0, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/android/server/people/data/ConversationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    monitor-exit p0

    .line 20
    return-object p1
.end method

.method public final declared-synchronized getConversationByLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    .line 3
    .line 4
    check-cast v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public final declared-synchronized getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    .line 3
    .line 4
    check-cast v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public final getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mPackageDir:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "Package data directory does not exist: "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/people/data/ConversationStore;->mPackageDir:Ljava/io/File;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "ConversationStore"

    .line 30
    .line 31
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfosProtoDiskReadWriter:Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    new-instance v0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mPackageDir:Ljava/io/File;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/people/data/ConversationStore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    .line 46
    invoke-direct {v0, v1, v2}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfosProtoDiskReadWriter:Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    .line 50
    .line 51
    :cond_1
    iget-object p0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfosProtoDiskReadWriter:Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    .line 52
    .line 53
    return-object p0
.end method

.method public final scheduleUpdateConversationsOnDisk()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationStore;->getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    .line 11
    .line 12
    check-cast v2, Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object p0, v0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->mConversationInfoFileName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, p0, v1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->scheduleSave(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw v0

    .line 31
    :cond_0
    :goto_0
    return-void
.end method

.method public final declared-synchronized updateConversationsInMemory(Lcom/android/server/people/data/ConversationInfo;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    .line 3
    .line 4
    iget-object v1, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 5
    .line 6
    check-cast v0, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    .line 16
    .line 17
    iget-object v2, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 18
    .line 19
    check-cast v1, Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    .line 32
    .line 33
    iget-object v2, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 34
    .line 35
    check-cast v1, Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v0, p1, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    .line 45
    .line 46
    iget-object v2, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 47
    .line 48
    check-cast v1, Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object v0, p1, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 60
    .line 61
    check-cast v1, Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-virtual {v1, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    :cond_3
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :goto_1
    monitor-exit p0

    .line 69
    throw p1
.end method
