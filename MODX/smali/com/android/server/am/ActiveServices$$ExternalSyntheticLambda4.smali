.class public final synthetic Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/ServiceConnection;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:Lcom/android/server/am/ForegroundServiceDelegation;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ServiceConnection;Landroid/content/ComponentName;Lcom/android/server/am/ForegroundServiceDelegation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;->f$0:Landroid/content/ServiceConnection;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;->f$1:Landroid/content/ComponentName;

    .line 8
    iput-object p3, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/am/ForegroundServiceDelegation;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;->f$0:Landroid/content/ServiceConnection;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;->f$1:Landroid/content/ComponentName;

    .line 5
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/am/ForegroundServiceDelegation;

    .line 7
    iget-object p0, p0, Lcom/android/server/am/ForegroundServiceDelegation;->mBinder:Landroid/os/IBinder;

    .line 9
    invoke-interface {v0, v1, p0}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 12
    return-void
.end method
