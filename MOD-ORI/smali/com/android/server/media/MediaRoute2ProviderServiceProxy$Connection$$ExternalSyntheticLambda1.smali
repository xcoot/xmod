.class public final synthetic Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->-$$Nest$monServiceDisconnectedInternal(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 21
    .line 22
    if-ne v1, p0, :cond_1

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    iput-boolean p0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    .line 26
    .line 27
    iget-object p0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLastDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    iget-boolean p0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLastDiscoveryPreferenceIncludesThisPackage:Z

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    iget-object p0, v0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :goto_0
    iget-object v1, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLastDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 51
    .line 52
    invoke-virtual {v0, p0, v1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateDiscoveryPreference(Ljava/util/Set;Landroid/media/RouteDiscoveryPreference;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void

    .line 56
    :pswitch_1
    check-cast p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 59
    .line 60
    iget-object v1, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 61
    .line 62
    if-ne v1, p0, :cond_3

    .line 63
    .line 64
    sget-boolean p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    .line 65
    .line 66
    if-eqz p0, :cond_2

    .line 67
    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ": Service connection died"

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string v1, "MR2ProviderSvcProxy"

    .line 86
    .line 87
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->disconnect()V

    .line 91
    .line 92
    .line 93
    :cond_3
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
