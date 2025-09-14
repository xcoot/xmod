.class public final synthetic Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssVisibilityControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 6
    return-void
.end method


# virtual methods
.method public final onPermissionsChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda5;

    .line 8
    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;I)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    .line 14
    return-void
.end method
