.class public final Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;
.super Lcom/android/internal/infra/GlobalWhitelistState;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mServicePackages:Landroid/util/SparseArray;

.field public final mTemporaryServices:Landroid/util/SparseBooleanArray;


# direct methods
.method public static -$$Nest$msetServiceInfo(Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;ILjava/lang/String;Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setServiceInfo(): invalid name: "

    .line 4
    iget-object v1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    if-eqz p3, :cond_0

    .line 9
    :try_start_0
    iget-object p3, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {p3, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget-object p3, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    .line 20
    invoke-virtual {p3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 23
    :goto_0
    if-eqz p2, :cond_2

    .line 25
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 28
    move-result-object p3

    .line 29
    if-nez p3, :cond_1

    .line 31
    const-string p3, "AutofillManagerService"

    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    .line 48
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    .line 58
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 61
    :goto_1
    monitor-exit v1

    .line 62
    return-void

    .line 63
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/infra/GlobalWhitelistState;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    .line 11
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    .line 18
    return-void
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/GlobalWhitelistState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 4
    iget-object v0, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 12
    move-result v1

    .line 13
    if-lez v1, :cond_0

    .line 15
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    const-string v1, "Service packages: "

    .line 20
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    .line 33
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    .line 36
    move-result v1

    .line 37
    if-lez v1, :cond_1

    .line 39
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    const-string p1, "Temp services: "

    .line 44
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    .line 49
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 52
    :cond_1
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final injectAugmentedAutofillInfo(Landroid/content/AutofillOptions;ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    .line 6
    if-nez v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/internal/infra/WhitelistHelper;

    .line 18
    if-eqz v1, :cond_2

    .line 20
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    .line 22
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/lang/String;

    .line 32
    if-eqz p0, :cond_1

    .line 34
    const-string/jumbo v2, "com.samsung.android.smartsuggestions"

    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 43
    if-nez p2, :cond_1

    .line 45
    const/4 p0, 0x1

    .line 46
    iput-boolean p0, p1, Landroid/content/AutofillOptions;->augmentedAutofillEnabled:Z

    .line 48
    const/4 p0, 0x0

    .line 49
    iput-object p0, p1, Landroid/content/AutofillOptions;->whitelistedActivitiesForAugmentedAutofill:Landroid/util/ArraySet;

    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :cond_1
    invoke-virtual {v1, p3}, Lcom/android/internal/infra/WhitelistHelper;->isWhitelisted(Ljava/lang/String;)Z

    .line 56
    move-result p0

    .line 57
    iput-boolean p0, p1, Landroid/content/AutofillOptions;->augmentedAutofillEnabled:Z

    .line 59
    invoke-virtual {v1, p3}, Lcom/android/internal/infra/WhitelistHelper;->getWhitelistedComponents(Ljava/lang/String;)Landroid/util/ArraySet;

    .line 62
    move-result-object p0

    .line 63
    iput-object p0, p1, Landroid/content/AutofillOptions;->whitelistedActivitiesForAugmentedAutofill:Landroid/util/ArraySet;

    .line 65
    :cond_2
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method public final isWhitelisted(ILandroid/content/ComponentName;)Z
    .locals 6

    .line 1
    const-string v0, "Ignoring package "

    .line 3
    iget-object v1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    .line 8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 11
    move-result v3

    .line 12
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/String;

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    if-eqz v2, :cond_0

    .line 22
    const-string/jumbo v5, "com.samsung.android.smartsuggestions"

    .line 25
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 31
    move v2, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v2, v3

    .line 34
    :goto_0
    if-eqz v2, :cond_1

    .line 36
    if-nez p1, :cond_1

    .line 38
    monitor-exit v1

    .line 39
    return v4

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/GlobalWhitelistState;->isWhitelisted(ILandroid/content/ComponentName;)Z

    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_2

    .line 48
    monitor-exit v1

    .line 49
    return v3

    .line 50
    :cond_2
    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    .line 52
    if-eqz v2, :cond_3

    .line 54
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    .line 56
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 62
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 65
    move-result-object p2

    .line 66
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    .line 68
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_3

    .line 78
    const-string v2, "AutofillManagerService"

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string p2, " for augmented autofill while using temporary service "

    .line 90
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    .line 95
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 98
    move-result-object p0

    .line 99
    check-cast p0, Ljava/lang/String;

    .line 101
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 108
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    monitor-exit v1

    .line 112
    return v3

    .line 113
    :cond_3
    monitor-exit v1

    .line 114
    return v4

    .line 115
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0
.end method
