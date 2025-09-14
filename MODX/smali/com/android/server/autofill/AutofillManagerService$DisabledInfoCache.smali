.class public final Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCache:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static -$$Nest$mdump(Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;Ljava/io/PrintWriter;)V
    .locals 9

    .line 1
    const-string v0, "  "

    .line 3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 8
    if-nez v2, :cond_0

    .line 10
    const-string p0, "N/A"

    .line 12
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    monitor-exit v1

    .line 16
    goto :goto_2

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_3

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 22
    const-string v2, "    "

    .line 24
    const/4 v3, 0x0

    .line 25
    move v4, v3

    .line 26
    :goto_0
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 31
    move-result v5

    .line 32
    if-ge v4, v5, :cond_2

    .line 34
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 36
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 39
    move-result v5

    .line 40
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    const-string v6, "User: "

    .line 45
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 51
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Landroid/util/ArrayMap;

    .line 59
    move v6, v3

    .line 60
    :goto_1
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 63
    move-result v7

    .line 64
    if-ge v6, v7, :cond_1

    .line 66
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Ljava/lang/String;

    .line 72
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 75
    move-result-object v8

    .line 76
    check-cast v8, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    .line 78
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    const-string v7, ": "

    .line 86
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 92
    add-int/lit8 v6, v6, 0x1

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    monitor-exit v1

    .line 99
    :goto_2
    return-void

    .line 100
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw p0
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance p1, Ljava/lang/Object;

    .line 9
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 14
    new-instance p1, Landroid/util/SparseArray;

    .line 16
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 21
    return-void

    .line 22
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance p1, Ljava/lang/Object;

    .line 27
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 32
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addDisabledActivityLocked(Landroid/content/ComponentName;JI)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 15
    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 19
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {p0, p4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    :cond_0
    iget-object p0, v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    .line 29
    if-nez p0, :cond_1

    .line 31
    new-instance p0, Landroid/util/ArrayMap;

    .line 33
    const/4 p4, 0x1

    .line 34
    invoke-direct {p0, p4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 37
    iput-object p0, v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    .line 39
    :cond_1
    iget-object p0, v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    .line 41
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public addDisabledAppLocked(ILjava/lang/String;J)V
    .locals 2

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 15
    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 19
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    :cond_0
    iget-object p0, v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    .line 29
    if-nez p0, :cond_1

    .line 31
    new-instance p0, Landroid/util/ArrayMap;

    .line 33
    const/4 p1, 0x1

    .line 34
    invoke-direct {p0, p1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 37
    iput-object p0, v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    .line 39
    :cond_1
    iget-object p0, v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    .line 41
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method
