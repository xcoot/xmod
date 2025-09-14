.class public final Lcom/android/server/connectivity/Vpn$Connection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public mService:Landroid/os/IBinder;


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;

    .line 3
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;

    .line 4
    return-void
.end method
