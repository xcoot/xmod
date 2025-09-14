.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda26;->f$0:Z

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda26;->f$0:Z

    .line 3
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 5
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onBypassLocationPermissionsChanged(Z)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method
