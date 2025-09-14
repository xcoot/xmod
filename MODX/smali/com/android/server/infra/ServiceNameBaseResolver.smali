.class public abstract Lcom/android/server/infra/ServiceNameBaseResolver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

.field public final mIsMultiple:Z

.field public final mLock:Ljava/lang/Object;

.field public mOnSetCallback:Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;

.field public mTemporaryHandler:Lcom/android/server/infra/ServiceNameBaseResolver$1;

.field public mTemporaryServiceExpiration:J

.field public final mTemporaryServiceNamesList:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    .line 18
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 20
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    .line 25
    iput-object p1, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mContext:Landroid/content/Context;

    .line 27
    iput-boolean p2, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mIsMultiple:Z

    .line 29
    return-void
.end method


# virtual methods
.method public dumpShort(ILjava/io/PrintWriter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    const-string/jumbo v2, "tmpName="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    iget-wide v1, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mTemporaryServiceExpiration:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 6
    const-string v3, " (expires in "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 8
    const-string v1, "), "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 9
    :cond_0
    :goto_0
    const-string/jumbo v1, "defaultName="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/infra/ServiceNameBaseResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    iget-object p0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 12
    const-string p0, " (disabled)"

    goto :goto_1

    :cond_1
    const-string p0, " (enabled)"

    :goto_1
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract dumpShort(Ljava/io/PrintWriter;)V
.end method

.method public final getDefaultServiceName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/infra/ServiceNameBaseResolver;->getDefaultServiceNameList(I)[Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 7
    array-length p1, p0

    .line 8
    if-nez p1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    aget-object p0, p0, p1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 16
    :goto_1
    return-object p0
.end method

.method public final getDefaultServiceNameList(I)[Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mIsMultiple:Z

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/infra/ServiceNameBaseResolver;->readServiceNameList(I)[Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :goto_0
    :try_start_1
    array-length v3, p0

    .line 19
    if-ge v2, v3, :cond_2

    .line 21
    aget-object v3, p0, v2

    .line 23
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    aget-object v3, p0, v2

    .line 32
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 35
    move-result-object v3

    .line 36
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 39
    move-result-object v4

    .line 40
    const-wide/32 v5, 0xc0000

    .line 43
    invoke-interface {v4, v3, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 46
    move-result-object v3

    .line 47
    if-eqz v3, :cond_1

    .line 49
    aget-object v3, p0, v2

    .line 51
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_4

    .line 57
    :catch_0
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 61
    goto :goto_0

    .line 62
    :goto_2
    :try_start_2
    const-string p1, "ServiceNameBaseResolver"

    .line 64
    const-string v2, "Could not validate provided services."

    .line 66
    invoke-static {p1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 72
    move-result p0

    .line 73
    new-array p0, p0, [Ljava/lang/String;

    .line 75
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 78
    move-result-object p0

    .line 79
    check-cast p0, [Ljava/lang/String;

    .line 81
    monitor-exit v0

    .line 82
    return-object p0

    .line 83
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/ServiceNameBaseResolver;->readServiceName(I)Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_4

    .line 93
    new-array p0, v2, [Ljava/lang/String;

    .line 95
    goto :goto_3

    .line 96
    :cond_4
    filled-new-array {p0}, [Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    :goto_3
    monitor-exit v0

    .line 101
    return-object p0

    .line 102
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    throw p0
.end method

.method public final getServiceName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceNameList(I)[Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 7
    array-length p1, p0

    .line 8
    if-nez p1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    aget-object p0, p0, p1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 16
    :goto_1
    return-object p0
.end method

.method public final getServiceNameList(I)[Ljava/lang/String;
    .locals 4

    .line 1
    const-string/jumbo v0, "getServiceName(): temporary name not set and default disabled for user "

    .line 4
    const-string/jumbo v1, "getServiceName(): using temporary name "

    .line 7
    iget-object v2, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 16
    check-cast v3, [Ljava/lang/String;

    .line 18
    if-eqz v3, :cond_0

    .line 20
    const-string p0, "ServiceNameBaseResolver"

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, " for user "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    monitor-exit v2

    .line 50
    return-object v3

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    .line 55
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 61
    const-string p0, "ServiceNameBaseResolver"

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    monitor-exit v2

    .line 79
    const/4 p0, 0x0

    .line 80
    return-object p0

    .line 81
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/infra/ServiceNameBaseResolver;->getDefaultServiceNameList(I)[Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    monitor-exit v2

    .line 86
    return-object p0

    .line 87
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p0
.end method

.method public final isTemporary(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    monitor-exit v0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public abstract readServiceName(I)Ljava/lang/String;
.end method

.method public abstract readServiceNameList(I)[Ljava/lang/String;
.end method

.method public final resetTemporaryService(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "resetting temporary service for user "

    .line 4
    iget-object v1, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "ServiceNameBaseResolver"

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v0, " from "

    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, [Ljava/lang/Object;

    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    .line 46
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 49
    iget-object v0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mTemporaryHandler:Lcom/android/server/infra/ServiceNameBaseResolver$1;

    .line 51
    const/4 v2, 0x0

    .line 52
    const/4 v3, 0x0

    .line 53
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 58
    iput-object v2, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mTemporaryHandler:Lcom/android/server/infra/ServiceNameBaseResolver$1;

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mOnSetCallback:Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;

    .line 65
    if-eqz p0, :cond_1

    .line 67
    invoke-interface {p0, p1, v2, v3}, Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;->onNameResolved(ILjava/lang/String;Z)V

    .line 70
    :cond_1
    monitor-exit v1

    .line 71
    return-void

    .line 72
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p0
.end method

.method public final setDefaultServiceEnabled(IZ)Z
    .locals 6

    .line 1
    const-string/jumbo v0, "enabling default service for user "

    .line 4
    const-string/jumbo v1, "disabling default service for user "

    .line 7
    const-string/jumbo v2, "setDefaultServiceEnabled("

    .line 10
    iget-object v3, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    iget-object v4, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    .line 15
    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x1

    .line 20
    xor-int/2addr v4, v5

    .line 21
    if-ne v4, p2, :cond_0

    .line 23
    const-string p0, "ServiceNameBaseResolver"

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string p1, "): already "

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    monitor-exit v3

    .line 49
    const/4 p0, 0x0

    .line 50
    return p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    if-eqz p2, :cond_1

    .line 55
    const-string p2, "ServiceNameBaseResolver"

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    .line 74
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const-string p2, "ServiceNameBaseResolver"

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    .line 97
    invoke-virtual {p0, p1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 100
    :goto_0
    monitor-exit v3

    .line 101
    return v5

    .line 102
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    throw p0
.end method

.method public final setTemporaryServices(II[Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mTemporaryHandler:Lcom/android/server/infra/ServiceNameBaseResolver$1;

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/android/server/infra/ServiceNameBaseResolver$1;

    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v1, p0, v3, p1}, Lcom/android/server/infra/ServiceNameBaseResolver$1;-><init>(Lcom/android/server/infra/ServiceNameBaseResolver;Landroid/os/Looper;I)V

    .line 23
    iput-object v1, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mTemporaryHandler:Lcom/android/server/infra/ServiceNameBaseResolver$1;

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    move-result-wide v3

    .line 35
    int-to-long v5, p2

    .line 36
    add-long/2addr v3, v5

    .line 37
    iput-wide v3, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mTemporaryServiceExpiration:J

    .line 39
    iget-object p2, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mTemporaryHandler:Lcom/android/server/infra/ServiceNameBaseResolver$1;

    .line 41
    invoke-virtual {p2, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 44
    :goto_1
    array-length p2, p3

    .line 45
    if-ge v2, p2, :cond_2

    .line 47
    aget-object p2, p3, v2

    .line 49
    iget-object v1, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mOnSetCallback:Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;

    .line 51
    if-eqz v1, :cond_1

    .line 53
    const/4 v3, 0x1

    .line 54
    invoke-interface {v1, p1, p2, v3}, Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;->onNameResolved(ILjava/lang/String;Z)V

    .line 57
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "FrameworkResourcesServiceNamer[temps="

    .line 3
    iget-object v1, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object p0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string p0, "]"

    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    monitor-exit v1

    .line 26
    return-object p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method
