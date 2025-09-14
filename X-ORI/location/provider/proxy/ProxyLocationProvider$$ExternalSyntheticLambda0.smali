.class public final synthetic Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/location/provider/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProvider;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {p1, p0, v0}, Landroid/location/provider/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
