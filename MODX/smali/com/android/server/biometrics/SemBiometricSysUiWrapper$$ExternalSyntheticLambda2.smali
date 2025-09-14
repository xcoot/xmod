.class public final synthetic Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiWrapper;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda2;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda2;->f$2:I

    .line 10
    iput p4, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda2;->f$3:I

    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 3
    iget v4, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda2;->f$1:I

    .line 5
    iget v5, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda2;->f$2:I

    .line 7
    iget v6, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda2;->f$3:I

    .line 9
    check-cast p1, Ljava/lang/Long;

    .line 11
    check-cast p2, Landroid/util/Pair;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 18
    check-cast p0, Ljava/lang/Integer;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 23
    move-result v3

    .line 24
    iget-object p0, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    new-instance p1, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;

    .line 31
    move-object v1, p1

    .line 32
    move-object v2, p0

    .line 33
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIII)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method
