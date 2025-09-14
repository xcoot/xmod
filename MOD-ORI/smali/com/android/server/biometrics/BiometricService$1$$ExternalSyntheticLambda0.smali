.class public final synthetic Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$1;JI[B)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;->f$1:J

    iput p4, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;->f$2:I

    iput-object p5, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;->f$3:[B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$2;JI[B)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;->f$1:J

    iput p4, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;->f$2:I

    iput-object p5, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;->f$3:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/biometrics/BiometricService$2;

    .line 9
    .line 10
    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;->f$1:J

    .line 11
    .line 12
    iget v3, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;->f$2:I

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;->f$3:[B

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/biometrics/BiometricService;->handleOnDismissed(J[BI)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lcom/android/server/biometrics/BiometricService$1;

    .line 25
    .line 26
    iget-wide v2, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;->f$1:J

    .line 27
    .line 28
    iget v4, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;->f$2:I

    .line 29
    .line 30
    iget-object v5, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;->f$3:[B

    .line 31
    .line 32
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationSucceeded(JI[BLandroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
