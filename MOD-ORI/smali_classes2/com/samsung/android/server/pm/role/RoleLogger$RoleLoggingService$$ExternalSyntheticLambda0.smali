.class public final synthetic Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 4
    .line 5
    sget v1, Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v1, "Finished"

    .line 11
    .line 12
    const-string v2, "RoleLogger"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    :try_start_0
    sget-object v4, Lcom/samsung/android/server/pm/role/RoleLogger;->sRoleLoggingServiceName:Landroid/content/ComponentName;

    .line 16
    .line 17
    const-string v4, "Check role holders"

    .line 18
    .line 19
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    new-instance v4, Lcom/samsung/android/server/pm/role/RoleLogger;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    sget-object v5, Lcom/samsung/android/server/pm/role/RoleLogger;->ROLES_TO_LOG:[Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v4, v0, v5}, Lcom/samsung/android/server/pm/role/RoleLogger;->-$$Nest$mgetEachRoleHolder(Lcom/samsung/android/server/pm/role/RoleLogger;Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {v0, v4}, Lcom/samsung/android/server/pm/SALoggingHelper;->sendSettingLog(Landroid/content/Context;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0, p0, v3}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception v4

    .line 44
    goto :goto_2

    .line 45
    :catch_0
    move-exception v4

    .line 46
    :try_start_1
    sget-object v5, Lcom/samsung/android/server/pm/role/RoleLogger;->sRoleLoggingServiceName:Landroid/content/ComponentName;

    .line 47
    .line 48
    const-string v5, "Failed to log role holders"

    .line 49
    .line 50
    invoke-static {v2, v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :goto_1
    return-void

    .line 55
    :goto_2
    invoke-virtual {v0, p0, v3}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 56
    .line 57
    .line 58
    sget-object p0, Lcom/samsung/android/server/pm/role/RoleLogger;->sRoleLoggingServiceName:Landroid/content/ComponentName;

    .line 59
    .line 60
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    throw v4
.end method
