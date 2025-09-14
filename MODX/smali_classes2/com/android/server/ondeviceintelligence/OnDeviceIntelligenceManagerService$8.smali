.class public final Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$8;
.super Landroid/os/ICancellationSignal$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$c:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$8;->val$c:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/ICancellationSignal$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$8;->val$c:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Landroid/os/ICancellationSignal;->cancel()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
