.class public final Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;
.super Lcom/android/server/biometrics/BiometricSensor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;->this$1:Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/biometrics/BiometricSensor;-><init>(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
