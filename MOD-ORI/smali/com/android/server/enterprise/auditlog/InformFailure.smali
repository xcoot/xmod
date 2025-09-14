.class public final Lcom/android/server/enterprise/auditlog/InformFailure;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/enterprise/auditlog/InformFailure;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/auditlog/InformFailure;->mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/enterprise/auditlog/InformFailure;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/server/enterprise/auditlog/InformFailure;->mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/enterprise/auditlog/InformFailure;->mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method


# virtual methods
.method public final declared-synchronized broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.LOG_EXCEPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, "AUDIT_LOG_EXCEPTION"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 6
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 7
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 9
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.LOG_EXCEPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    const-string v1, "AUDIT_LOG_EXCEPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 14
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 15
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
