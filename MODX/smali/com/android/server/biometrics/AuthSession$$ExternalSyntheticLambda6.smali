.class public final synthetic Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/AuthSession;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/AuthSession;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/AuthSession;

    .line 5
    iput p2, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->f$1:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/AuthSession;

    .line 8
    iget p0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->f$1:I

    .line 10
    check-cast p1, Lcom/android/server/biometrics/BiometricSensor;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget p1, p1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 17
    if-eq p1, p0, :cond_0

    .line 19
    iget-object p0, v0, Lcom/android/server/biometrics/AuthSession;->mSfpsSensorIds:Ljava/util/List;

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 31
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/AuthSession;

    .line 41
    iget p0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;->f$1:I

    .line 43
    check-cast p1, Lcom/android/server/biometrics/BiometricSensor;

    .line 45
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 47
    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v0

    .line 53
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 65
    iget v2, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 67
    if-ne p0, v2, :cond_1

    .line 69
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    .line 72
    move-result p0

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const-string v0, "Unknown sensor: "

    .line 76
    const-string v1, "BiometricService/AuthSession"

    .line 78
    invoke-static {p0, v0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    const/16 p0, 0xfff

    .line 83
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    .line 86
    move-result p1

    .line 87
    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    .line 90
    move-result p0

    .line 91
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
