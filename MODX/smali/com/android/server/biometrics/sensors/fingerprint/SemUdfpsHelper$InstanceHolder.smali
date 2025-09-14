.class public abstract Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 3
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder$1;

    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$$ExternalSyntheticLambda0;

    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-direct {v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 14
    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;-><init>(Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;Ljava/util/function/Supplier;)V

    .line 17
    sput-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 19
    return-void
.end method
