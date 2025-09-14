.class public final synthetic Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiWrapper;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda4;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 3
    iget v4, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda4;->f$1:I

    .line 5
    iget-object v6, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    .line 7
    check-cast p1, Ljava/lang/Long;

    .line 9
    check-cast p2, Landroid/util/Pair;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 16
    check-cast p0, Ljava/lang/Integer;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v3

    .line 22
    iget-object p0, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    new-instance p1, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda10;

    .line 29
    const/4 v5, 0x1

    .line 30
    move-object v1, p1

    .line 31
    move-object v2, p0

    .line 32
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZLjava/lang/String;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method
