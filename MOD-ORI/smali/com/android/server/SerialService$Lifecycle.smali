.class public final Lcom/android/server/SerialService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mService:Lcom/android/server/SerialService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/SerialService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/SerialService$Lifecycle;->mService:Lcom/android/server/SerialService;

    .line 11
    .line 12
    const-string/jumbo v1, "serial"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 16
    .line 17
    .line 18
    const-class v0, Landroid/hardware/SerialManagerInternal;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/SerialService$Lifecycle;->mService:Lcom/android/server/SerialService;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/SerialService;->mInternal:Lcom/android/server/SerialService$1;

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
