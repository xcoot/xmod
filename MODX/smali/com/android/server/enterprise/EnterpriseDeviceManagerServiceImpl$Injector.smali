.class public final Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method

.method public static addLazySystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    sget-object p0, Lcom/android/server/enterprise/EnterpriseService;->sLazyServiceList:Ljava/util/List;

    .line 6
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance p0, Lcom/android/server/enterprise/EnterpriseService$$ExternalSyntheticLambda0;

    .line 13
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V

    .line 19
    return-void
.end method

.method public static addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/enterprise/EnterpriseService;->sPolicyServices:Ljava/util/Map;

    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Landroid/os/IBinder;

    .line 6
    invoke-static {p1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    invoke-interface {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 12
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/TreeMap;

    .line 18
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 24
    invoke-static {p1, p0}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    :cond_0
    return-void
.end method

.method public static invokeSystemReadyIfNeeded()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/TreeMap;

    .line 7
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/String;

    .line 39
    invoke-static {v2, v3}, Lcom/android/server/enterprise/EnterpriseService;->invokeSystemReadyIfNeeded(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v2

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v4, "invokeSystemReadyIfNeeded() failed in"

    .line 49
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/lang/String;

    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    const-string v3, "EnterpriseService"

    .line 67
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method
