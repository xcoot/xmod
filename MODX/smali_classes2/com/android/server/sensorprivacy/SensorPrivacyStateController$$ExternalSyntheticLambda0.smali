.class public final synthetic Lcom/android/server/sensorprivacy/SensorPrivacyStateController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-interface {p1, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;->callback(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
