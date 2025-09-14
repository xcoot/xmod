.class public final Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onCloudProviderChanged(ILjava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "Cloud provider of user "

    .line 3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 5
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    move-result-object v1

    .line 22
    const-wide/16 v2, 0x0

    .line 24
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;

    .line 31
    move-result-object p2

    .line 32
    if-nez p2, :cond_0

    .line 34
    const/4 p2, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 38
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 40
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 42
    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 45
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mCloudMediaProviderPackages:Landroid/util/SparseArray;

    .line 47
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/String;

    .line 53
    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_2

    .line 59
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 61
    if-eqz v3, :cond_1

    .line 63
    const-string v3, "JobScheduler"

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string v0, " changed from "

    .line 75
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v0, " to "

    .line 83
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    goto :goto_1

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_2

    .line 99
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 101
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mCloudMediaProviderPackages:Landroid/util/SparseArray;

    .line 103
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 109
    move-result-object v0

    .line 110
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 112
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 114
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 116
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 118
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 120
    const/16 p1, 0x9

    .line 122
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 129
    :cond_2
    monitor-exit v1

    .line 130
    return-void

    .line 131
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    throw p0
.end method
