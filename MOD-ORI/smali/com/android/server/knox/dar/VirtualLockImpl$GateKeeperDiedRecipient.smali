.class public final Lcom/android/server/knox/dar/VirtualLockImpl$GateKeeperDiedRecipient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/VirtualLockImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/VirtualLockImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/knox/dar/VirtualLockImpl$GateKeeperDiedRecipient;->this$0:Lcom/android/server/knox/dar/VirtualLockImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl$GateKeeperDiedRecipient;->this$0:Lcom/android/server/knox/dar/VirtualLockImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/knox/dar/VirtualLockImpl;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/service/gatekeeper/IGateKeeperService;->asBinder()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl$GateKeeperDiedRecipient;->this$0:Lcom/android/server/knox/dar/VirtualLockImpl;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    .line 17
    .line 18
    return-void
.end method
