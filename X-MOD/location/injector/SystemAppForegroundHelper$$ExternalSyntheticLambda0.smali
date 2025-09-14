.class public final synthetic Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/injector/SystemAppForegroundHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/injector/SystemAppForegroundHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    .line 6
    return-void
.end method


# virtual methods
.method public final onUidImportance(II)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/16 v0, 0x7d

    .line 8
    if-gt p2, v0, :cond_0

    .line 10
    const/4 p2, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda1;

    .line 19
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/injector/SystemAppForegroundHelper;IZ)V

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    return-void
.end method
