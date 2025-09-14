.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;

.field public final mDeathRecipient:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$1;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$1;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mDeathRecipient:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$1;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final put(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassificationSessionId;->getToken()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-instance v3, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;

    .line 11
    .line 12
    invoke-direct {v3, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;-><init>(Landroid/view/textclassifier/TextClassificationContext;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    :try_start_1
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassificationSessionId;->getToken()Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mDeathRecipient:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$1;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception p0

    .line 32
    :try_start_2
    const-string p1, "TextClassificationManagerService"

    .line 33
    .line 34
    const-string p2, "SessionCache: Failed to link to death"

    .line 35
    .line 36
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    throw p0
.end method

.method public final remove(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mDeathRecipient:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$1;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :catch_0
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0
.end method
