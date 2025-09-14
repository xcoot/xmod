.class public final Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;
.super Lcom/samsung/android/sepunion/SemUnionManagerLocal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemUnionMainServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accessoryStateChanged(Z[B[B)V
    .locals 0

    .line 1
    return-void
.end method

.method public final createSemSystemService(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "Already existing service : "

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const-string p0, "SemUnionMainServiceImpl"

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    monitor-exit v1

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {p0, p1, v0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$maddSepUnionServiceMapInternal(Lcom/android/server/sepunion/SemUnionMainServiceImpl;Ljava/lang/String;Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 50
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final getSemSystemService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final notifyCoverSwitchStateChanged(JZ)V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sConstructorMap:Ljava/util/HashMap;

    .line 2
    .line 3
    const-string p0, "SemUnionMainServiceImpl"

    .line 4
    .line 5
    const-string/jumbo v0, "notifyCoverSwitchStateChanged"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService()Lcom/android/server/sepunion/AbsSemSystemService;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/server/sepunion/SemPluginManagerService;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/SemPluginManagerService;->notifyCoverSwitchStateChanged(JZ)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string/jumbo p1, "notifyCoverSwitchStateChanged : there is no system"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public final notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sConstructorMap:Ljava/util/HashMap;

    .line 2
    .line 3
    const-string v0, "SemUnionMainServiceImpl"

    .line 4
    .line 5
    const-string/jumbo v1, "notifySmartCoverAttachStateChanged"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService()Lcom/android/server/sepunion/AbsSemSystemService;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/server/sepunion/SemPluginManagerService;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mSemUnionManagerLocal:Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;

    .line 22
    .line 23
    const-string/jumbo v1, "plugin"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->createSemSystemService(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService()Lcom/android/server/sepunion/AbsSemSystemService;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    move-object v1, p0

    .line 34
    check-cast v1, Lcom/android/server/sepunion/SemPluginManagerService;

    .line 35
    .line 36
    :cond_0
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/sepunion/SemPluginManagerService;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string/jumbo p0, "notifySmartCoverAttachStateChanged : create system fail"

    .line 43
    .line 44
    .line 45
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public final screenTurnedOff()V
    .locals 0

    .line 1
    return-void
.end method
