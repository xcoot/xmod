.class public final Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssManagerService;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    .line 5
    .line 6
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/location/GnssCapabilities;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 6
    .line 7
    const-string v3, "android.location.action.GNSS_CAPABILITIES_CHANGED"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "android.location.extra.GNSS_CAPABILITIES"

    .line 13
    .line 14
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/high16 v2, 0x40000000    # 2.0f

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/high16 v2, 0x10000000

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 35
    .line 36
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final onHalRestarted()V
    .locals 0

    .line 1
    return-void
.end method
