.class public final Lcom/android/server/credentials/CredentialDescriptionRegistry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sCredentialDescriptionSessionPerUser:Landroid/util/SparseArray;

.field public static final sLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field public mCredentialDescriptions:Ljava/util/Map;

.field public mTotalDescriptionCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sCredentialDescriptionSessionPerUser:Landroid/util/SparseArray;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    .line 15
    return-void
.end method

.method public static clearAllSessions()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sCredentialDescriptionSessionPerUser:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    sget-object v1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public static forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sCredentialDescriptionSessionPerUser:Landroid/util/SparseArray;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/android/server/credentials/CredentialDescriptionRegistry;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Lcom/android/server/credentials/CredentialDescriptionRegistry;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v3, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v3, v2, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    iput v3, v2, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mTotalDescriptionCount:I

    .line 31
    .line 32
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 39
    .line 40
    .line 41
    return-object v2

    .line 42
    :goto_1
    sget-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public static setSession(ILcom/android/server/credentials/CredentialDescriptionRegistry;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sCredentialDescriptionSessionPerUser:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    sget-object p1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 19
    .line 20
    .line 21
    throw p0
.end method
