.class public final synthetic Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    iput p1, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;->f$0:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    iget p0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;->f$0:I

    .line 5
    check-cast p1, Lcom/android/server/biometrics/BiometricSensor;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    iget p1, p1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 12
    if-eq p1, p0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :pswitch_0
    iget p1, p1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 24
    if-ne p1, p0, :cond_1

    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
