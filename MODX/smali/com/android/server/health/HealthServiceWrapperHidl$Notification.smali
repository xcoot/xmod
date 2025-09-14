.class public final Lcom/android/server/health/HealthServiceWrapperHidl$Notification;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/health/HealthServiceWrapperHidl;


# direct methods
.method public constructor <init>(Lcom/android/server/health/HealthServiceWrapperHidl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;->this$0:Lcom/android/server/health/HealthServiceWrapperHidl;

    .line 3
    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    const-string p3, "android.hardware.health@2.0::IHealth"

    .line 3
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;->this$0:Lcom/android/server/health/HealthServiceWrapperHidl;

    .line 12
    iget-object p1, p1, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 20
    return-void

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;->this$0:Lcom/android/server/health/HealthServiceWrapperHidl;

    .line 23
    iget-object p1, p1, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 25
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 28
    move-result-object p1

    .line 29
    new-instance p2, Lcom/android/server/health/HealthServiceWrapperHidl$Notification$1;

    .line 31
    invoke-direct {p2, p0}, Lcom/android/server/health/HealthServiceWrapperHidl$Notification$1;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl$Notification;)V

    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    return-void
.end method
