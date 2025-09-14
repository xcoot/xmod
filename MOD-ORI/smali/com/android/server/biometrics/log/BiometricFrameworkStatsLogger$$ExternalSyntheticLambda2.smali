.class public final synthetic Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

.field public final synthetic f$1:Lcom/android/server/biometrics/log/OperationContextExt;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z

.field public final synthetic f$6:J

.field public final synthetic f$7:I

.field public final synthetic f$8:Z

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    iput p5, p0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$4:I

    .line 11
    .line 12
    iput-boolean p6, p0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$5:Z

    .line 13
    .line 14
    iput-wide p7, p0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$6:J

    .line 15
    .line 16
    iput p9, p0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$7:I

    .line 17
    .line 18
    iput-boolean p10, p0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$8:Z

    .line 19
    .line 20
    iput p11, p0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$9:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$4:I

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$5:Z

    .line 10
    .line 11
    iget-wide v5, p0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$6:J

    .line 12
    .line 13
    iget v7, p0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$7:I

    .line 14
    .line 15
    iget-boolean v8, p0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$8:Z

    .line 16
    .line 17
    iget v9, p0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;->f$9:I

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Float;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 25
    .line 26
    .line 27
    move-result v10

    .line 28
    invoke-static/range {v1 .. v10}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->authenticate(Lcom/android/server/biometrics/log/OperationContextExt;IIZJIZIF)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
