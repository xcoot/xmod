.class public final synthetic Lcom/android/server/PruneInstantAppsJobService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PruneInstantAppsJobService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PruneInstantAppsJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/PruneInstantAppsJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/PruneInstantAppsJobService;

    .line 6
    iput-object p2, p0, Lcom/android/server/PruneInstantAppsJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/PruneInstantAppsJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/PruneInstantAppsJobService;

    .line 3
    iget-object p0, p0, Lcom/android/server/PruneInstantAppsJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 5
    sget v1, Lcom/android/server/PruneInstantAppsJobService;->$r8$clinit:I

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 12
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 18
    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 20
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 22
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 24
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 26
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 29
    move-result-object v4

    .line 30
    iget-object v1, v3, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 35
    move-result-object v1

    .line 36
    const-string/jumbo v2, "installed_instant_app_max_cache_period"

    .line 39
    const-wide v5, 0x39ef8b000L

    .line 44
    invoke-static {v1, v2, v5, v6}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 47
    move-result-wide v7

    .line 48
    iget-object v1, v3, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 53
    move-result-object v1

    .line 54
    const-string/jumbo v2, "uninstalled_instant_app_max_cache_period"

    .line 57
    invoke-static {v1, v2, v5, v6}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 60
    move-result-wide v9

    .line 61
    const-wide v5, 0x7fffffffffffffffL

    .line 66
    :try_start_0
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(Lcom/android/server/pm/Computer;JJJ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    const-string v2, "InstantAppRegistry"

    .line 73
    const-string v3, "Error pruning installed and uninstalled instant apps"

    .line 75
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :goto_0
    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 82
    return-void
.end method
