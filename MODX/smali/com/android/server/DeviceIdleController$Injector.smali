.class public final Lcom/android/server/DeviceIdleController$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field public final mContext:Landroid/content/Context;

.field public mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "DeviceIdleController"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 12
    return-void
.end method
