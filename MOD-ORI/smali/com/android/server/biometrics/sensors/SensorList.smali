.class public final Lcom/android/server/biometrics/sensors/SensorList;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mSensors:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/app/IActivityManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SensorList;->mActivityManager:Landroid/app/IActivityManager;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final addSensor(ILjava/lang/Object;ILandroid/app/SynchronousUserSwitchObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "SensorList"

    .line 7
    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mActivityManager:Landroid/app/IActivityManager;

    .line 9
    .line 10
    invoke-interface {p0, p4, p1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/16 p0, -0x2710

    .line 14
    .line 15
    if-ne p3, p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    invoke-virtual {p4, p0}, Landroid/app/SynchronousUserSwitchObserver;->onUserSwitching(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    const-string p0, "Unable to register user switch observer"

    .line 23
    .line 24
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    return-void
.end method
