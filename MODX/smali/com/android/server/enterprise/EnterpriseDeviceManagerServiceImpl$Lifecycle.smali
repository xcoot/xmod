.class public final Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 6
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 11
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 3
    invoke-static {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->-$$Nest$msystemReady(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V

    .line 6
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "enterprise_policy"

    .line 4
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v0, "onUserStarting() : userId = "

    .line 15
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    const-string v0, "EnterpriseDeviceManagerService"

    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Ljava/util/TreeMap;

    .line 36
    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 39
    move-result-object p0

    .line 40
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p0

    .line 44
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 56
    invoke-interface {v0, p1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onUserStarting(I)V

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method
