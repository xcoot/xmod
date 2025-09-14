.class public final Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;
.super Landroid/app/appfunctions/ICancellationCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Landroid/os/CancellationSignal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    .line 3
    invoke-direct {p0}, Landroid/app/appfunctions/ICancellationCallback$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final sendCancellationTransport(Landroid/os/ICancellationSignal;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 6
    return-void
.end method
