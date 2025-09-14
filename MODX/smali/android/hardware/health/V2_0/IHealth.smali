.class public interface abstract Landroid/hardware/health/V2_0/IHealth;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# virtual methods
.method public abstract getCapacity(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V
.end method

.method public abstract getChargeCounter(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V
.end method

.method public abstract getChargeStatus(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V
.end method

.method public abstract getCurrentAverage(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V
.end method

.method public abstract getCurrentNow(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V
.end method

.method public abstract getEnergyCounter(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V
.end method

.method public abstract getHealthInfo(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda2;)V
.end method

.method public abstract registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I
.end method

.method public abstract unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I
.end method

.method public abstract update()I
.end method
