.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;


# instance fields
.field mContentObserver:Landroid/database/ContentObserver;

.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;

.field public final mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;

    .line 10
    return-void
.end method
