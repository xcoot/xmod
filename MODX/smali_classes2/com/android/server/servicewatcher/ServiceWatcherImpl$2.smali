.class public final Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->PROXY_SERVICE_RECONNECTION_TIMEOUT:Landroid/location/LocationConstants$STATE_TYPE;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/location/LocationConstants$STATE_TYPE;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne p1, v1, :cond_1

    .line 10
    .line 11
    sget-boolean p1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->D:Z

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "location proxy service reconnection timeout"

    .line 20
    .line 21
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mConnectionRecord:Lcom/android/server/location/nsflp/NSConnectionRecord;

    .line 30
    .line 31
    const-string/jumbo v2, "record"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    check-cast p0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 44
    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method
