.class public final Lcom/android/server/location/provider/LocationProviderManager$5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;

.field public final synthetic val$newRequest:Landroid/location/provider/ProviderRequest;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/provider/ProviderRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$5;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 6
    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$5;->val$newRequest:Landroid/location/provider/ProviderRequest;

    .line 8
    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$5;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$5;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 8
    iget-object v2, v1, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    .line 10
    if-ne v2, p0, :cond_0

    .line 12
    const/4 v2, 0x0

    .line 13
    iput-object v2, v1, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    .line 15
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$5;->val$newRequest:Landroid/location/provider/ProviderRequest;

    .line 17
    invoke-virtual {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager;->setProviderRequest(Landroid/location/provider/ProviderRequest;)V

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method
