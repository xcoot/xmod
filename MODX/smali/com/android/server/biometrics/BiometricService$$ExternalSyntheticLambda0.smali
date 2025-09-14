.class public final synthetic Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/BiometricService;

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/BiometricService;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 21
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 23
    if-ne v1, p1, :cond_0

    .line 25
    iget p0, v0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p0

    .line 37
    :goto_0
    return-object p0
.end method
