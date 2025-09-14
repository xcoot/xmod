.class public final Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;
.super Landroid/os/IServiceCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/health/HealthServiceWrapperAidl;


# direct methods
.method public constructor <init>(Lcom/android/server/health/HealthServiceWrapperAidl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IServiceCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRegistration(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/health/HealthServiceWrapperAidl;->SERVICE_NAME:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/health/HealthServiceWrapperAidl;->getHandlerThread()Landroid/os/HandlerThread;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method
