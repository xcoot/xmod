.class public final synthetic Lcom/android/server/wm/SplashScreenExceptionList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SplashScreenExceptionList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SplashScreenExceptionList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/SplashScreenExceptionList$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SplashScreenExceptionList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/SplashScreenExceptionList$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SplashScreenExceptionList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "splash_screen_exception_list"

    .line 7
    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SplashScreenExceptionList;->updateDeviceConfig(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
