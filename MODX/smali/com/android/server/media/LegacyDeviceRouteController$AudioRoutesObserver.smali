.class public final Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;
.super Landroid/media/IAudioRoutesObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/LegacyDeviceRouteController;


# direct methods
.method public constructor <init>(Lcom/android/server/media/LegacyDeviceRouteController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/LegacyDeviceRouteController;

    .line 3
    invoke-direct {p0}, Landroid/media/IAudioRoutesObserver$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/LegacyDeviceRouteController;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/media/LegacyDeviceRouteController;->createRouteFromAudioInfo(Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/LegacyDeviceRouteController;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/LegacyDeviceRouteController;

    .line 12
    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object p0, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mOnDeviceRouteChangedListener:Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;

    .line 17
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 19
    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    .line 21
    new-instance v0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;

    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-direct {v0, p0, v1}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;I)V

    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p0
.end method
