.class public final Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mRunningJobSet:Ljava/util/Set;


# virtual methods
.method public final addRunningJobs(Landroid/app/job/JobInfo;I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;->mRunningJobSet:Ljava/util/Set;

    .line 5
    check-cast p0, Ljava/util/HashSet;

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    sget-boolean p1, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 20
    sget-object p1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 22
    iget-object v0, p1, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 24
    if-nez v0, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string/jumbo v0, "packageName"

    .line 30
    const-string/jumbo v1, "uid"

    .line 33
    invoke-static {p2, v0, p0, v1}, Lcom/android/server/am/FreecessController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 36
    move-result-object p0

    .line 37
    const-string/jumbo p2, "reason"

    .line 40
    const-string v0, "JOB_ADD"

    .line 42
    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p2, p1, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 47
    const/16 v0, 0x11

    .line 49
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 56
    iget-object p0, p1, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 58
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    :cond_1
    :goto_0
    return-void
.end method

.method public final deInit()V
    .locals 0

    .line 1
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;->mRunningJobSet:Ljava/util/Set;

    .line 3
    check-cast p1, Ljava/util/HashSet;

    .line 5
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;->mRunningJobSet:Ljava/util/Set;

    .line 14
    check-cast p0, Ljava/util/HashSet;

    .line 16
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 20
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_2

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/app/job/JobInfo;

    .line 32
    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    if-eqz p1, :cond_1

    .line 48
    const/16 p0, 0x12

    .line 50
    return p0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    const-string p2, " isRunningJobPkg unknow err:"

    .line 56
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    const-string p2, "MARs:JobSchedulerPackageFilter"

    .line 61
    invoke-static {p0, p1, p2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 64
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 65
    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method
