.class public final synthetic Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiWrapper;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 2
    .line 3
    iget v4, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;->f$1:I

    .line 4
    .line 5
    iget v5, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;->f$2:I

    .line 6
    .line 7
    iget v6, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;->f$3:I

    .line 8
    .line 9
    iget-object v7, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    check-cast p1, Ljava/lang/Long;

    .line 12
    .line 13
    check-cast p2, Landroid/util/Pair;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget-object p0, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance p1, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;

    .line 32
    .line 33
    move-object v1, p1

    .line 34
    move-object v2, p0

    .line 35
    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIIILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
