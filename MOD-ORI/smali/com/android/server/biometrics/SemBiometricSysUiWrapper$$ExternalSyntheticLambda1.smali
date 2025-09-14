.class public final synthetic Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiWrapper;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 2
    .line 3
    iget v4, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Long;

    .line 6
    .line 7
    check-cast p2, Landroid/util/Pair;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    iget-object p0, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance p1, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda10;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    move-object v1, p1

    .line 30
    move-object v2, p0

    .line 31
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
