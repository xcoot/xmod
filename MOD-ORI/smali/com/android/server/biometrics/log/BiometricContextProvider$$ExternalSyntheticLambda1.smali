.class public final synthetic Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/log/BiometricContextProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/biometrics/log/OperationContextExt;

    .line 4
    .line 5
    check-cast p2, Ljava/util/function/Consumer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 11
    .line 12
    iget-boolean v0, v0, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    .line 13
    .line 14
    invoke-virtual {p1, p0, v0}, Lcom/android/server/biometrics/log/OperationContextExt;->update(Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 18
    .line 19
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
