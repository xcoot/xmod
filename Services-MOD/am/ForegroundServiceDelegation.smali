.class public final Lcom/android/server/am/ForegroundServiceDelegation;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final mConnection:Landroid/content/ServiceConnection;

.field public final mOptions:Landroid/app/ForegroundServiceDelegationOptions;


# direct methods
.method public constructor <init>(Landroid/app/ForegroundServiceDelegationOptions;Landroid/content/ServiceConnection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Binder;

    .line 6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceDelegation;->mBinder:Landroid/os/IBinder;

    .line 11
    iput-object p1, p0, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    .line 13
    iput-object p2, p0, Lcom/android/server/am/ForegroundServiceDelegation;->mConnection:Landroid/content/ServiceConnection;

    .line 15
    return-void
.end method
