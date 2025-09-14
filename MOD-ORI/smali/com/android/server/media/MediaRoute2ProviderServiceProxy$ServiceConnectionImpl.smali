.class public final Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/media/flags/Flags;->enableMr2ServiceNonMainBgThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 22
    .line 23
    invoke-static {p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->-$$Nest$monBindingDiedInternal(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Landroid/content/ComponentName;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/media/flags/Flags;->enableMr2ServiceNonMainBgThread()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-direct {v0, v1, p0, p2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 22
    .line 23
    invoke-static {p0, p2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->-$$Nest$monServiceConnectedInternal(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Landroid/os/IBinder;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/media/flags/Flags;->enableMr2ServiceNonMainBgThread()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, v1, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 22
    .line 23
    invoke-static {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->-$$Nest$monServiceDisconnectedInternal(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method
