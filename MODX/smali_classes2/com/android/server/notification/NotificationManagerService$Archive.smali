.class public final Lcom/android/server/notification/NotificationManagerService$Archive;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBuffer:Ljava/util/LinkedList;

.field public final mBufferLock:Ljava/lang/Object;

.field public final mBufferSize:I

.field public final mEnabled:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    .line 12
    .line 13
    new-instance p1, Ljava/util/LinkedList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    .line 19
    .line 20
    new-instance p1, Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mEnabled:Landroid/util/SparseArray;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/util/Pair;

    .line 22
    .line 23
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 26
    .line 27
    invoke-virtual {p2, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v4, "    "

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    const/4 v2, 0x5

    .line 57
    if-lt v1, v2, :cond_0

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    const-string p0, "    ..."

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    :goto_1
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public final getArray(Landroid/os/UserManager;IZ)[Landroid/service/notification/StatusBarNotification;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda10;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v1, v2, p1, v0}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter p1

    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    :try_start_0
    iget p2, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/4 v2, 0x0

    .line 45
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    if-ge v2, p2, :cond_3

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Landroid/util/Pair;

    .line 58
    .line 59
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v4, Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    const/16 v5, 0x12

    .line 68
    .line 69
    if-ne v4, v5, :cond_2

    .line 70
    .line 71
    if-eqz p3, :cond_1

    .line 72
    .line 73
    :cond_2
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v4, Landroid/service/notification/StatusBarNotification;

    .line 76
    .line 77
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_1

    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v3, Landroid/service/notification/StatusBarNotification;

    .line 96
    .line 97
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    new-array p0, p0, [Landroid/service/notification/StatusBarNotification;

    .line 106
    .line 107
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    check-cast p0, [Landroid/service/notification/StatusBarNotification;

    .line 112
    .line 113
    monitor-exit p1

    .line 114
    return-object p0

    .line 115
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Archive ("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " notification"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne p0, v1, :cond_0

    .line 24
    .line 25
    const-string p0, ")"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string/jumbo p0, "s)"

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public final updateHistoryEnabled(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mEnabled:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    if-nez p2, :cond_2

    .line 11
    .line 12
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter p2

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    :goto_0
    if-ltz v0, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/util/Pair;

    .line 32
    .line 33
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ne p1, v1, :cond_0

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    monitor-exit p2

    .line 55
    goto :goto_3

    .line 56
    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0

    .line 58
    :cond_2
    :goto_3
    return-void
.end method
