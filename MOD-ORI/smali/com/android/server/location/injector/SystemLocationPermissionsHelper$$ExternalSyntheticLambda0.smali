.class public final synthetic Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/injector/SystemLocationPermissionsHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPermissionsChanged(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/injector/SystemLocationPermissionsHelper;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
