.class public final synthetic Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onValues(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 2
    .line 3
    const-string v0, "HidlToAidlSessionAdapter"

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSecurityLevel:I

    .line 8
    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string p1, "SecurityLevel : "

    .line 12
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const-string p1, " (Strong=1,2,3)"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p1, ""

    .line 27
    .line 28
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string p0, "SecurityLevel fail"

    .line 36
    .line 37
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :goto_1
    return-void
.end method
