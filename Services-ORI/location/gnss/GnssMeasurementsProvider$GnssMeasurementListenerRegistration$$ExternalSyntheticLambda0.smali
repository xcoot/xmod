.class public final synthetic Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/location/IGnssMeasurementsListener;

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    invoke-interface {p1, p0}, Landroid/location/IGnssMeasurementsListener;->onStatusChanged(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
