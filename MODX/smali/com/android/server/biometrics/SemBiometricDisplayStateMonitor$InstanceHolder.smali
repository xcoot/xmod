.class public abstract Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$InstanceHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 3
    invoke-direct {v0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 8
    return-void
.end method
