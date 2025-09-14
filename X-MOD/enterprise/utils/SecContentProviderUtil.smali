.class public abstract Lcom/android/server/enterprise/utils/SecContentProviderUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getUsers(Z)Ljava/util/List;

    .line 9
    move-result-object v2

    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v2

    .line 14
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    move-result-object v4

    .line 30
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x1

    .line 34
    invoke-virtual {v4, p1, v5, v6, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_4

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    goto :goto_3

    .line 46
    :goto_2
    :try_start_1
    const-string v2, "SecContentProviderUtil"

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string/jumbo v4, "notifyPolicyChangesAllUser() : failed to notify. uri = "

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    goto :goto_1

    .line 70
    :goto_3
    return-void

    .line 71
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    throw p0
.end method

.method public static notifyPolicyChangesAsUser(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 5

    .line 3
    const-string/jumbo v0, "notifyPolicyChangesAsUser() : failed to notify. userId = "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 6
    :try_start_1
    const-string v3, "SecContentProviderUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", uri = "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 7
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8
    throw p0
.end method

.method public static notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "content://com.sec.knox.provider/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/android/server/enterprise/utils/SecContentProviderUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
