.class public final synthetic Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 2
    .line 3
    check-cast p2, Landroid/util/Pair;

    .line 4
    .line 5
    check-cast p3, Landroid/os/IBinder;

    .line 6
    .line 7
    sget p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->$r8$clinit:I

    .line 8
    .line 9
    invoke-virtual {p1, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
