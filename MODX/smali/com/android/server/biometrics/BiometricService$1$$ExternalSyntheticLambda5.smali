.class public final synthetic Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService$1;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:[B

.field public final synthetic f$4:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$1;JI[BLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/BiometricService$1;

    .line 6
    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$1:J

    .line 8
    iput p4, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$2:I

    .line 10
    iput-object p5, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$3:[B

    .line 12
    iput-object p6, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$4:Landroid/os/Bundle;

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/BiometricService$1;

    .line 3
    iget-wide v2, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$1:J

    .line 5
    iget v4, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$2:I

    .line 7
    iget-object v5, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$3:[B

    .line 9
    iget-object v6, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$4:Landroid/os/Bundle;

    .line 11
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 13
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationSucceeded(JI[BLandroid/os/Bundle;)V

    .line 16
    return-void
.end method
