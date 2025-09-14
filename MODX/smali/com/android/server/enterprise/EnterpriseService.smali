.class public abstract Lcom/android/server/enterprise/EnterpriseService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sEdmsInstance:Ljava/lang/Object;

.field public static final sInitializedList:Ljava/util/List;

.field public static final sLazyServiceList:Ljava/util/List;

.field public static final sPolicyServices:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 3
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/enterprise/EnterpriseService;->sPolicyServices:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    sput-object v0, Lcom/android/server/enterprise/EnterpriseService;->sInitializedList:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    sput-object v0, Lcom/android/server/enterprise/EnterpriseService;->sLazyServiceList:Ljava/util/List;

    .line 22
    return-void
.end method

.method public static addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    instance-of v0, p1, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    instance-of v0, p1, Landroid/os/IBinder;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/EnterpriseService;->sPolicyServices:Ljava/util/Map;

    .line 13
    check-cast p1, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 15
    check-cast v0, Ljava/util/TreeMap;

    .line 17
    invoke-virtual {v0, p0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    return-void

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    const-string p1, "addPolicyService failed because it\'s not enterprise service"

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p0
.end method

.method public static getPolicyService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/enterprise/EnterpriseService;->sPolicyServices:Ljava/util/Map;

    .line 3
    check-cast v0, Ljava/util/TreeMap;

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getPolicyServices()Ljava/util/Map;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 3
    sget-object v1, Lcom/android/server/enterprise/EnterpriseService;->sPolicyServices:Ljava/util/Map;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 8
    return-object v0
.end method

.method public static invokeSystemReadyIfNeeded(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/enterprise/EnterpriseService;->sInitializedList:Ljava/util/List;

    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 12
    invoke-interface {p0}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->systemReady()V

    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 23
    const-string p0, "Unexpected Error on calling system ready for "

    .line 25
    const-string v0, "EnterpriseService"

    .line 27
    invoke-static {p0, p1, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method
