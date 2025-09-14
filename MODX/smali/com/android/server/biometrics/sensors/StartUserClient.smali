.class public abstract Lcom/android/server/biometrics/sensors/StartUserClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field protected final mUserStartedCallback:Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 4
    move-result-object v6

    .line 5
    const/4 v11, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v7, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object v2, p2

    .line 11
    move-object v3, p3

    .line 12
    move/from16 v5, p4

    .line 14
    move/from16 v8, p5

    .line 16
    move-object/from16 v9, p6

    .line 18
    move-object/from16 v10, p7

    .line 20
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 23
    move-object/from16 v1, p8

    .line 25
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/StartUserClient;->mUserStartedCallback:Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;

    .line 27
    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .locals 0

    .line 1
    const/16 p0, 0x11

    .line 3
    return p0
.end method
