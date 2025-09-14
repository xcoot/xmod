.class public final Lcom/android/server/pm/PersonaServiceProxy$1;
.super Landroid/os/ContainerStateReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PersonaServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaServiceProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDeviceOwnerActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p1, "PersonaManagerService::Proxy"

    .line 2
    .line 3
    const-string/jumbo p2, "onDeviceOwnerActivated..."

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-static {p0, p1}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$mfindAndConnectToContainerService(Lcom/android/server/pm/PersonaServiceProxy;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
