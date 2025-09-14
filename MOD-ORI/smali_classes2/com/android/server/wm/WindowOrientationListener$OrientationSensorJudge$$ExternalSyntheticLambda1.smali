.class public final synthetic Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string/jumbo v0, "rotation_resolver_timeout_millis"

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string/jumbo v2, "rotation_memorization_timeout_millis"

    .line 18
    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    :cond_0
    const-string/jumbo p1, "window_manager"

    .line 29
    .line 30
    .line 31
    const-wide/16 v3, 0x2bc

    .line 32
    .line 33
    invoke-static {p1, v0, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationResolverTimeoutMillis:J

    .line 38
    .line 39
    const-wide/16 v0, 0xbb8

    .line 40
    .line 41
    invoke-static {p1, v2, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationMemorizationTimeoutMillis:J

    .line 46
    .line 47
    :cond_1
    return-void
.end method
