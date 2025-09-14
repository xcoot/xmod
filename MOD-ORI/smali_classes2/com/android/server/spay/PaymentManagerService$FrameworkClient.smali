.class public final Lcom/android/server/spay/PaymentManagerService$FrameworkClient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

.field public final mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/spay/PaymentManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/spay/PaymentManagerService;Landroid/spay/PaymentTZServiceConfig;Landroid/spay/PaymentTZServiceCommnInfo;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->this$0:Lcom/android/server/spay/PaymentManagerService;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

    .line 7
    .line 8
    iput p4, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mPid:I

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mPackageName:Ljava/lang/String;

    .line 11
    .line 12
    new-instance p1, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;-><init>(Lcom/android/server/spay/PaymentManagerService$FrameworkClient;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    .line 18
    .line 19
    iget-object p0, p2, Landroid/spay/PaymentTZServiceConfig;->mClient:Landroid/os/IBinder;

    .line 20
    .line 21
    iput-object p0, p1, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
