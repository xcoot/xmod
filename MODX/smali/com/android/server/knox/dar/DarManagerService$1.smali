.class public final Lcom/android/server/knox/dar/DarManagerService$1;
.super Landroid/app/UserSwitchObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/DarManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/DarManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService$1;->this$0:Lcom/android/server/knox/dar/DarManagerService;

    .line 3
    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onLockedBootComplete(I)V
    .locals 3

    .line 1
    const-string/jumbo v0, "onLockedBootComplete: "

    .line 4
    const-string v1, "DarManagerService"

    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService$1;->this$0:Lcom/android/server/knox/dar/DarManagerService;

    .line 11
    iget-object v0, v0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    .line 13
    const/16 v1, 0x78

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 19
    move-result-object p1

    .line 20
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$1;->this$0:Lcom/android/server/knox/dar/DarManagerService;

    .line 22
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    .line 24
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    return-void
.end method
