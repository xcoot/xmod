.class public final synthetic Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    .line 5
    invoke-interface {v0, p0}, Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;->onSensorPrivacyChanged(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
