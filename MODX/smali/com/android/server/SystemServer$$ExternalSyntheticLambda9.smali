.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;


# virtual methods
.method public final onModuleServiceConnected(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 3
    const-string/jumbo p0, "tethering"

    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-static {p0, p1, v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 11
    return-void
.end method
